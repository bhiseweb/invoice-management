import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  
  static targets = [
    "units", "unitCost", "tax",
    "totalGross", "totalNet", "totalTax",
    "itemTotalWithTax", "taxAmount", "itemTotal"
  ]

  calculate(e) {    
    e.preventDefault();

    if (this.unitCostTarget.value != 0.0) {
      this.itemTotalTarget.value = this.unitsTarget.value * this.unitCostTarget.value
      this.taxAmountTarget.value = (this.itemTotalTarget.value / 100) * parseFloat(this.taxTarget.value)
      this.itemTotalWithTaxTarget.value = parseFloat(this.itemTotalTarget.value) + parseFloat(this.taxAmountTarget.value)
      let itemTotalWithTaxs = 0.0

      let item_total_with_tax_elements = document.getElementsByClassName('item_total_with_tax')
      for(let itt of item_total_with_tax_elements) {
        itemTotalWithTaxs += parseFloat(itt.value)
      }

      this.updateValues(itemTotalWithTaxs);
    }
  }

  recalculate(e) {
    e.preventDefault();
    this.unitCostTarget.parentNode.parentNode.remove()
    let itemTotals = 0.0
    let itemTotalWithTaxs = 0.0
    let taxAmounts = 0.0
    for(let itt of this.itemTotalTargets) {
      itemTotals += parseFloat(itt.value)
    }
    for(let itt of this.taxAmountTargets) {
      taxAmounts += parseFloat(itt.value)
    }
    for(let itt of this.itemTotalWithTaxTargets) {
      itemTotalWithTaxs += parseFloat(itt.value)
    }

    this.updateValues(itemTotalWithTaxs);
  }

  updateValues(itemTotalWithTaxs) {
    document.getElementsByClassName('sub-total')[0].innerText =  `Sub-Total: ${itemTotalWithTaxs.toFixed(2)}`
  }
}
