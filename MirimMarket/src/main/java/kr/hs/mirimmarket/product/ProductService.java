package kr.hs.mirimmarket.product;

public interface ProductService {
	public void insertProduct(Product product);
	public void selectProduct(Product product);
	public void updateProduct(Product product);
	public void getProduct(Product product);
	public void getProductList(Product product);
}
