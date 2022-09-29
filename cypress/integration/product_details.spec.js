describe("visit product page", () => {
  beforeEach(() =>{ 
    cy.visit("/")
    cy.get('.products article').first().click()
  });

  it("the product page details should be visible", () => {
    cy.get(".product-detail").should("be.visible");
  });

  it("the product quantity should be available", () => {
    cy.get(".quantity").should("be.visible");
  });

  it("the product page price should be visible", () => {
    cy.get(".price").should("be.visible");
  });

});