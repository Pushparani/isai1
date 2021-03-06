//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v1.0.5-b16-fcs 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2006.07.10 at 05:31:30 PM PDT 
//


package com.google.checkout.schema._2;


/**
 * Java content class for FlatRateShipping complex type.
 * <p>The following schema fragment specifies the expected content contained within this java content object. (defined at file:/home/colinc/projects/apache-tomcat-5.5.12/apiv2.xsd line 162)
 * <p>
 * <pre>
 * &lt;complexType name="FlatRateShipping">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;all>
 *         &lt;element name="price" type="{http://checkout.google.com/schema/2}Money"/>
 *         &lt;element name="shipping-restrictions" type="{http://checkout.google.com/schema/2}ShippingRestrictions" minOccurs="0"/>
 *       &lt;/all>
 *       &lt;attribute name="name" use="required" type="{http://www.w3.org/2001/XMLSchema}string" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 */
public interface FlatRateShipping {


    /**
     * Gets the value of the price property.
     * 
     * @return
     *     possible object is
     *     {@link com.google.checkout.schema._2.Money}
     */
    com.google.checkout.schema._2.Money getPrice();

    /**
     * Sets the value of the price property.
     * 
     * @param value
     *     allowed object is
     *     {@link com.google.checkout.schema._2.Money}
     */
    void setPrice(com.google.checkout.schema._2.Money value);

    /**
     * Gets the value of the shippingRestrictions property.
     * 
     * @return
     *     possible object is
     *     {@link com.google.checkout.schema._2.ShippingRestrictions}
     */
    com.google.checkout.schema._2.ShippingRestrictions getShippingRestrictions();

    /**
     * Sets the value of the shippingRestrictions property.
     * 
     * @param value
     *     allowed object is
     *     {@link com.google.checkout.schema._2.ShippingRestrictions}
     */
    void setShippingRestrictions(com.google.checkout.schema._2.ShippingRestrictions value);

    /**
     * Gets the value of the name property.
     * 
     * @return
     *     possible object is
     *     {@link java.lang.String}
     */
    java.lang.String getName();

    /**
     * Sets the value of the name property.
     * 
     * @param value
     *     allowed object is
     *     {@link java.lang.String}
     */
    void setName(java.lang.String value);

}
