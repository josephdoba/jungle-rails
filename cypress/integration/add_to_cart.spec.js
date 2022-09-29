describe("visit home page", () => {
  beforeEach(() =>{ 
    cy.visit("/")
  });

  it("Add to cart one product to the cart", () => {
    cy.get('.btn').first().click({force: true})
    cy.contains('My Cart (1)').should("be.visible");
  });

});