import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  calculate(e) {
    let index = e.target.dataset['itemIndex']
    let unit =  parseFloat(this.findElement(`units_${index}`).value)
    let cost =  parseFloat(this.findElement(`unit_cost_${index}`).value)
    let selectedTax = this.findElement(`tax_${index}`)
    let tax =  parseFloat(selectedTax.options[selectedTax.selectedIndex].dataset["percentage"])

    let item_total = unit * cost
    let tax_amount = parseFloat((item_total / 100) * tax).toFixed(2)
    let item_total_with_tax = item_total + parseFloat(tax_amount)
    this.updateItem(index, item_total, tax_amount, item_total_with_tax)
    this.updateInvoiceTotalAmount()
  }

  updateItem(index, net, tax, total) {
    this.findElement(`item_total_${index}`).value = net
    this.findElement(`tax_amount_${index}`).value = tax
    this.findElement(`item_total_with_tax_${index}`).value = total
  }

  resetForm(e) {
    e.preventDefault();
    let index = e.target.dataset['itemIndex']
    this.findElement(`invoice_item_${index}`).remove()
    this.updateInvoiceTotalAmount()
  }

  updateInvoiceTotalAmount() {
    this.findElement("sub-total").innerText = parseFloat(this.totalGross()).toFixed(2)
    this.findElement("total_net").innerText = parseFloat(this.totalNet()).toFixed(2)
    this.findElement("total_tax").innerText = parseFloat(this.totalTax()).toFixed(2)
  }

  totalGross() {
    return this.sumValues("item_total_with_taxes")
  }

  totalNet() {
    return this.sumValues("item_totals")
  }

  totalTax() {
    return this.sumValues("tax_amounts")
  }

  sumValues(element) {
    let total = 0
    var ele = document.getElementsByClassName(element);
    for(var i = 0; i < ele.length; i++){
      total += parseFloat(ele[i].value);
    }
    return total;
  }

  findElement(ele) {
    return document.getElementById(ele)
  }
}
