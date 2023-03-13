import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  calculate(e) {
    let index = e.target.dataset['itemIndex']
    let unit =  parseFloat(document.getElementById(`units_${index}`).value)
    let cost =  parseFloat(document.getElementById(`unit_cost_${index}`).value)
    let selectedTax = document.getElementById(`tax_${index}`)
    let tax =  parseFloat(selectedTax.options[selectedTax.selectedIndex].dataset["percentage"])

    let item_total = unit * cost
    let tax_amount = parseFloat((item_total / 100) * tax).toFixed(2)
    let item_total_with_tax = item_total + parseFloat(tax_amount)
    document.getElementById(`item_total_${index}`).value = item_total
    document.getElementById(`tax_amount_${index}`).value = tax_amount
    document.getElementById(`item_total_with_tax_${index}`).value = item_total_with_tax
    this.update_total_amount()
  }

  resetForm(e) {
    e.preventDefault();
    let index = e.target.dataset['itemIndex']
    document.getElementById(`invoice_item_${index}`).remove()
    this.update_total_amount()
  }

  update_total_amount() {
    let total_tax = 0
    let total_net = 0
    let total_gross = 0

    var x = document.getElementsByClassName("item_totals");
    for(var i = 0; i < x.length; i++){
      total_net += parseFloat(x[i].value);
    }
    var x = document.getElementsByClassName("tax_amounts");
    for(var i = 0; i < x.length; i++){
      total_tax += parseFloat(x[i].value);
    }
    var x = document.getElementsByClassName("item_total_with_taxes");
    for(var i = 0; i < x.length; i++){
      total_gross += parseFloat(x[i].value);
    }

    document.getElementById("sub-total").innerText = parseFloat(total_gross).toFixed(2)
    document.getElementById("total_net").innerText = parseFloat(total_net).toFixed(2)
    document.getElementById("total_tax").innerText = parseFloat(total_tax).toFixed(2)
  }
}
