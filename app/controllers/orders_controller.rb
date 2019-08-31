class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
    
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    require 'socket'

    
    client = TCPSocket.new '192.168.1.33', 9100

    client.write "recep"
    client.write "\n\n\n\n\n\n\n\n"

    client.write "\x1D\x56\x01"
    client.close

  end

  def print
    puts "hello"
    kebab = params["anything"]["kebab"]
    poulet = params["anything"]["poulet"]
    cheese = params["anything"]["cheese"]
    saucisse = params["anything"]["saucisse"]
    steak = params["anything"]["a_steak"]
    steakp =params["anything"]["a_steak_poulet"]
    belge = params["anything"]["belge"]
    kofte = params["anything"]["kofte"]
    nugets = params["anything"]["nuggets"]
    patatos = params["anything"]["patatos"]
    pain = params["anything"]["pain"]
    durum = params["anything"]["durum"]
    assiete = params["anything"]["assiete"]
    salade = params["anything"]["salade"]
    tomate = params["anything"]["tomate"]
    oignon = params["anything"]["oignon"]
    rouge = params["anything"]["rouge"]

    blanche =params["anything"]["blanche"]
    ketchup = params["anything"]["ketchup"]
    mayonnaise = params["anything"]["mayonnaise"]
    samourai = params["anything"]["samourai"]
    harissa = params["anything"]["harissa"]
    curry = params["anything"]["Curry"]
    algérienne = params["anything"]["algérienne"]
    andalouse = params["anything"]["andalouse"]

    blanchef =params["anything"]["blanchef"]
    ketchupf = params["anything"]["ketchupf"]
    mayonnaisef = params["anything"]["mayonnaisef"]
    samouraif = params["anything"]["samouraif"]
    harissaf = params["anything"]["harissaf"]
    curryf = params["anything"]["Curryf"]
    algériennef = params["anything"]["algériennef"]
    andalousef = params["anything"]["andalousef"]


    frite = params["anything"]["frite"]
    gfrite = params["anything"]["g_frite"]
    boisson = params["anything"]["boisson"]
    @remarque =  params["anything"]["name"]
    desert = params["anything"]["desert"]
    etu = params["anything"]["etu"]
    petit = params["anything"]["p_bar"]
    grand = params["anything"]["g_bar"]

    if belge == "1"
      pain = "1"
    end
    # puts kebab 
    # puts poulet 
    # puts cheese 
    # puts saucisse 
    # puts steak 
    # puts steakp 
    # puts belge 
    # puts kofte 
    # puts nugets
    # puts pain
    # puts durum
    # puts assiete
    # puts salade
    # puts tomate
    # puts oignon
    # puts rouge
    # puts blanche
    # puts ketchup
    # puts mayonnaise
    # puts samourai
    # puts harissa
    # puts curry
    # puts algérienne
    # puts andalouse
    # puts frite
    # puts boisson
    
    viande = []

    if kebab == "1"
      viande << "kebab"
    end    

    if poulet == "1"
      viande << "poulet"
    end

    if cheese == "1"
      viande << "cheese"
    end

    if saucisse == "1"
      viande << "saucisse"
    end

    if steak == "1"
      viande << "american steak"
    end

    if steakp == "1"
      viande << "american poulet"
    end

    if belge == "1"
      viande << "belge"
    end

    if kofte == "1"
      viande << "kofte"
    end

    if nugets == "1"
      viande << "nugets"
    end

    type = []
    
    if pain == "1"
      type << "pain"
    end

    if durum == "1"
    type << "durum"
    end

    if assiete == "1"
    type << "assiete"
    end

    if petit == "1"
    type << "petite barquette"
    end

    if grand == "1"
    type << "grande barquette"
    end

    crud = []
    if salade == "1"
    crud << "salade"
    end

    if tomate == "1"
    crud << "tomate"
    end

    if oignon == "1"
    crud << "oignon"
    end

    if rouge == "1"
    crud << "chou rouge"
    end
 
    sauce = []

    if blanche == "1"
    sauce << "blanche"
    end

    if ketchup == "1"
    sauce << "ketchup"
    end

    if mayonnaise == "1"
    sauce << "mayonnaise"
    end

    if samourai == "1"
    sauce << "samourai"
    end

    if harissa == "1"
    sauce << "harissa"
    end

    if curry == "1"
    sauce << "curry"
    end

    if algérienne == "1"
    sauce << "algerienne"
    end

    if andalouse == "1"
    sauce << "andalouse"
    end

    saucef = []

    if blanchef == "1"
    saucef << "blanche"
    end

    if ketchupf == "1"
    saucef << "ketchup"
    end

    if mayonnaisef == "1"
    saucef << "mayonnaise"
    end

    if samouraif == "1"
    saucef << "samourai"
    end

    if harissaf == "1"
    saucef << "harissa"
    end

    if curryf == "1"
    saucef << "curry"
    end

    if algériennef == "1"
    saucef << "algerienne"
    end

    if andalousef == "1"
    saucef << "andalouse"
    end

    extra = []
    if frite == "1"
    extra << "frite"
    end

    if gfrite == "1"
    extra << "Grande frite"
    end

    if boisson == "1"
      extra << "boisson"
    end

    if desert == "1"
      extra << "desert"
    end


    @price = 0
    if viande.count != 1 && viande.count != 0 && assiete == "1"
      puts "menu spéeciale"
      @price += 13
      if boisson == "1"
        @price += 1
      end

    elsif assiete == "1" && viande.count == 1
      @price += 10
      if boisson == "1"
        @price += 1
      end

    elsif (durum == "1" || pain == "1" ) && belge == "0"
      @price += 5
      if frite == "1"
        if boisson == "0"
          @price += 1
        else
          @price += 2
        end
      elsif frite == "0" && boisson == "1"
        @price += 1.5
      end
    
    elsif belge == "1"
      @price = 3
      if frite == "1"
        if boisson == "0"
          @price += 1
        else
          @price += 2
        end
      elsif frite == "0" && boisson == "1"
        @price += 1.5
      
      end


    end

    if etu == "1"
      @price += -0.5
    end

    if gfrite == "1"
      @price += 2.5
    end

    if desert == "1"
      @price += 0.5
    end

    if petit == "1" && patatos == "1"
      @price += 3
    elsif grand == "1" && patatos == "1"
      @price += 4.5
    elsif petit == "1" && viande.count == 1 && patatos = "0" && nugets == "0"
      @price += 4
    elsif grand == "1" && viande.count == 1 && patatos = "0" && nugets == "0"
      @price += 5.5
    elsif petit == "1" && nugets == "1"
      @price += 4
    elsif grand == "1" && nugets == "1"
      @price += 5
    end

    if boisson == "1" && assiete == "0" && pain == "0" && durum == "0"
      @price += 1.5
    end

    if frite == "1" && assiete == "0" && pain == "0" && durum == "0"
      @price += 2
    end











    @lig1 = ""
    type.each do |f|
      @lig1 += f + " "
    end


    
    @lig2 = ""
    viande.each do |f|
      @lig2 += f + " "
    end



    @lig3 = ""
    crud.each do |f|
      @lig3 += f + " "
    end

    @lig4 = ""
    sauce.each do |f|
      @lig4 += f + " "
    end

    @lig6 = "Sauce frite: "
    saucef.each do |f|
      @lig6 += f + " "
    end

    @lig5 = ""
    extra.each do |f|
      @lig5 += f + " "
    end

    def printi
    client = TCPSocket.new '192.168.1.33', 9100

    client.write "\x1B\x21\x25"
    client.write "\n"
    client.write "#{@lig1}"
    client.write "\n"
    client.write @lig2
    client.write "\n"
    client.write @lig3
    client.write "\n"
    client.write @lig4
    client.write "\n"
    client.write @lig6
    client.write "\n"
    client.write @lig5
    client.write "\n"
    client.write @remarque
    client.write "\n\n\n\n\n\n"

    client.write "\x1D\x56\x01"
    client.close
  end



    

  end








  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.fetch(:order, {})
    end
end
