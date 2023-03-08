import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [
    "units", "unitCost", "tax",
    "totalGross", "totalNet", "totalTax",
    "itemTotalWithTax", "taxAmount", "itemTotal"
  ]

  calculate(e) {
    e.preventDefault();
    debugger
    if (this.unitCostTarget.value != 0.0) {
      this.itemTotalTarget.value = this.unitsTarget.value * this.unitCostTarget.value
      this.taxAmountTarget.value = (this.itemTotalTarget.value / 100) * parseFloat(this.taxTarget.value)
      this.itemTotalWithTaxTarget.value = parseFloat(this.itemTotalTarget.value) + parseFloat(this.taxAmountTarget.value)
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
      debugger
      this.totalNetTarget.value = itemTotals
      this.totalGrossTarget.value = itemTotalWithTaxs
      this.totalTaxTarget.value = taxAmounts.toFixed(2)
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
    this.totalNetTarget.value = itemTotals
    this.totalGrossTarget.value = itemTotalWithTaxs
    this.totalTaxTarget.value = taxAmounts.toFixed(2)
  }
}
