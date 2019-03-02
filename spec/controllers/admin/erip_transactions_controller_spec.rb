require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Admin::EripTransactionsController, type: :controller do

  let(:user) { FactoryGirl.create(:admin_user) }

  before do
    sign_in user
  end

 # This should return the minimal set of attributes required to create a valid
  # EripTransaction. As you add validations to EripTransaction, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:bepaid_notification) {
    {
      "transaction":{
        "status":"successful",
        "type":"payment",
        "message":"",
        "id":"8759cf84-e56d-44b7-a8ae-62640f6402c4",
        "uid":"8759cf84-e56d-44b7-a8ae-62640f6402c4",
        "order_id":"100000003495",
        "amount":1000,
        "currency":"USD",
        "description":"Order #123",
        "tracking_id":"AB8923",
        "created_at":"2015-12-07T14:21:24.420Z",
        "expired_at":"2016-12-07T14:21:24.010Z",
        "paid_at":"2016-12-07T14:40:12.010Z",
        "test":true,
        "payment_method_type":"skrill",
        "billing_address":{
          "first_name": "Ivan",
          "middle_name": "M",
          "last_name": "Doe",
          "country": "LV",
          "city": "Riga",
          "zip": "LV1024",
          "address": "Brivibas str, 123",
          "phone": "+372500000000"
        },
        "customer":{
          "email":"ivan@example.com",
          "ip":"127.0.0.7"
        },
        "payment":{
          "ref_id":"1830288398",
          "message":"",
          "status":"pending",
          "gateway_id":1
        },
        "erip":{
          "request_id":"00000001",
          "service_no":248,
          "account_number":"2",
          "transaction_id":"0000001",
          "service_info":["Оплата заказа 123"],
          "instruction": ["'Расчёт' ЕРИП-> Интернет-магазины/сервисы-> B -> bePaid.by"],
          "receipt":["Спасибо за оплату заказа 123"]
        }
      }
    }
  }

  let(:bepaid_notification_donation) {
    {
      "transaction":{
        "status":"successful",
        "type":"payment",
        "message":"",
        "id":"8759cf84-e56d-44b7-a8ae-62640f6402c4",
        "uid":"8759cf84-e56d-44b7-a8ae-62640f6402c4",
        "order_id":"100000003495",
        "amount":1000,
        "currency":"USD",
        "description":"Order #123",
        "tracking_id":"AB8923",
        "created_at":"2015-12-07T14:21:24.420Z",
        "expired_at":"2016-12-07T14:21:24.010Z",
        "paid_at":"2016-12-07T14:40:12.010Z",
        "test":true,
        "payment_method_type":"skrill",
        "billing_address":{
          "first_name": "Ivan",
          "middle_name": "M",
          "last_name": "Doe",
          "country": "LV",
          "city": "Riga",
          "zip": "LV1024",
          "address": "Brivibas str, 123",
          "phone": "+372500000000"
        },
        "customer":{
          "email":"ivan@example.com",
          "ip":"127.0.0.7"
        },
        "payment":{
          "ref_id":"1830288398",
          "message":"",
          "status":"pending",
          "gateway_id":1
        },
        "erip":{
          "request_id":"00000001",
          "service_no":249,
          "account_number":"2",
          "transaction_id":"0000001",
          "service_info":["Оплата заказа 123"],
          "instruction": ["'Расчёт' ЕРИП-> Интернет-магазины/сервисы-> B -> bePaid.by"],
          "receipt":["Спасибо за оплату заказа 123"]
        }
      }
    }
  }


  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EripTransactionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all erip_transactions as @erip_transactions" do
      erip_transaction = EripTransaction.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:erip_transactions)).to eq([erip_transaction])
    end
  end

  describe "GET #show" do
    it "assigns the requested erip_transaction as @erip_transaction" do
      erip_transaction = EripTransaction.create! valid_attributes
      get :show, params: {id: erip_transaction.to_param}, session: valid_session
      expect(assigns(:erip_transaction)).to eq(erip_transaction)
    end
  end

  describe "GET #new" do
    it "assigns a new erip_transaction as @erip_transaction" do
      sign_in FactoryGirl.create(:admin_user)
      get :new, params: {}, session: valid_session
      expect(assigns(:erip_transaction)).to be_a_new(EripTransaction)
    end
  end

  describe "GET #edit" do
    it "assigns the requested erip_transaction as @erip_transaction" do
      erip_transaction = EripTransaction.create! valid_attributes
      get :edit, params: {id: erip_transaction.to_param}, session: valid_session
      expect(assigns(:erip_transaction)).to eq(erip_transaction)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new EripTransaction" do
        expect {
          post :create, params: {erip_transaction: valid_attributes}, session: valid_session
        }.to change(EripTransaction, :count).by(1)
      end

      it "assigns a newly created erip_transaction as @erip_transaction" do
        post :create, params: {erip_transaction: valid_attributes}, session: valid_session
        expect(assigns(:erip_transaction)).to be_a(EripTransaction)
        expect(assigns(:erip_transaction)).to be_persisted
      end

      it "redirects to the created erip_transaction" do
        post :create, params: {erip_transaction: valid_attributes}, session: valid_session
        expect(response).to redirect_to(EripTransaction.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved erip_transaction as @erip_transaction" do
        post :create, params: {erip_transaction: invalid_attributes}, session: valid_session
        expect(assigns(:erip_transaction)).to be_a_new(EripTransaction)
      end

      it "re-renders the 'new' template" do
        post :create, params: {erip_transaction: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested erip_transaction" do
        erip_transaction = EripTransaction.create! valid_attributes
        put :update, params: {id: erip_transaction.to_param, erip_transaction: new_attributes}, session: valid_session
        erip_transaction.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested erip_transaction as @erip_transaction" do
        erip_transaction = EripTransaction.create! valid_attributes
        put :update, params: {id: erip_transaction.to_param, erip_transaction: valid_attributes}, session: valid_session
        expect(assigns(:erip_transaction)).to eq(erip_transaction)
      end

      it "redirects to the erip_transaction" do
        erip_transaction = EripTransaction.create! valid_attributes
        put :update, params: {id: erip_transaction.to_param, erip_transaction: valid_attributes}, session: valid_session
        expect(response).to redirect_to(erip_transaction)
      end
    end

    context "with invalid params" do
      it "assigns the erip_transaction as @erip_transaction" do
        erip_transaction = EripTransaction.create! valid_attributes
        put :update, params: {id: erip_transaction.to_param, erip_transaction: invalid_attributes}, session: valid_session
        expect(assigns(:erip_transaction)).to eq(erip_transaction)
      end

      it "re-renders the 'edit' template" do
        erip_transaction = EripTransaction.create! valid_attributes
        put :update, params: {id: erip_transaction.to_param, erip_transaction: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested erip_transaction" do
      erip_transaction = EripTransaction.create! valid_attributes
      expect {
        delete :destroy, params: {id: erip_transaction.to_param}, session: valid_session
      }.to change(EripTransaction, :count).by(-1)
    end

    it "redirects to the erip_transactions list" do
      erip_transaction = EripTransaction.create! valid_attributes
      delete :destroy, params: {id: erip_transaction.to_param}, session: valid_session
      expect(response).to redirect_to(erip_transactions_url)
    end
  end

  describe "POST #bepaid_notify" do
    it "handles a valid notification from bePaid" do
      EripTransaction.destroy_all
      Payment.destroy_all
      expect {
        post :bepaid_notify, params: bepaid_notification, format: :json
      }.to change(EripTransaction, :count).by(1)

      et = assigns(:erip_transaction)
      expect(response).to have_http_status(:created)
      expect(et.erip['service_no'].to_i).to eq(248)
      expect(et.amount).to eq(10)
      expect(et.hs_payment).not_to be_nil
      expect(et.hs_payment).to be_a(Payment)
      expect(et.hs_payment.amount).to eq(10)
      expect(et.hs_payment.payment_form).to eq("erip")
      expect(et.hs_payment.payment_type).to eq("membership")
      expect(et.hs_payment.paid_at).to eq(DateTime.parse('2016-12-07T14:40:12.010Z'))
      expect(et.hs_payment.start_date).to eq(et.hs_payment.paid_at.to_date)
      expect(et.hs_payment.end_date).to eq(et.hs_payment.paid_at.to_date + (10.0 / 50.0 * 30 - 1).to_i.days)

    end
  end

  describe "POST #bepaid_notify" do
    it "rejects duplicated notification from bePaid" do
      EripTransaction.destroy_all
      Payment.destroy_all
      expect {
        post :bepaid_notify, params: bepaid_notification, format: :json
      }.to change(EripTransaction, :count).by(1)

      expect(response).to have_http_status(:created)

      expect {
        post :bepaid_notify, params: bepaid_notification, format: :json
      }.to_not change(EripTransaction, :count)

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe "POST #bepaid_notify" do
    it "handles a valid notification from bePaid with failed transaction" do
      EripTransaction.destroy_all
      Payment.destroy_all
      expect {
        bp = bepaid_notification.dup
        bp[:transaction][:status] = 'failed'
        post :bepaid_notify, params: bepaid_notification, format: :json
      }.to change(EripTransaction, :count).by(1)

      et = assigns(:erip_transaction)
      expect(response).to have_http_status(:created)
      expect(et.erip['service_no'].to_i).to eq(248)
      expect(et.amount).to eq(10)
      expect(et.hs_payment).to be_nil
    end
  end

  describe "POST #bepaid_notify" do
    it "handles a valid notification from bePaid with monthly amount" do
      EripTransaction.destroy_all
      Payment.destroy_all
      bp_notification_m = bepaid_notification.dup
      bp_notification_m[:transaction][:amount] = 5000
      expect {
        post :bepaid_notify, params: bp_notification_m, format: :json
      }.to change(EripTransaction, :count).by(1)

      et = assigns(:erip_transaction)
      expect(response).to have_http_status(:created)
      expect(et.erip['service_no'].to_i).to eq(248)
      expect(et.amount).to eq(50)
      expect(et.hs_payment).not_to be_nil
      expect(et.hs_payment).to be_a(Payment)
      expect(et.hs_payment.amount).to eq(50)
      expect(et.hs_payment.payment_form).to eq("erip")
      expect(et.hs_payment.payment_type).to eq("membership")
      expect(et.hs_payment.paid_at).to eq(DateTime.parse('2016-12-07T14:40:12.010Z'))
      expect(et.hs_payment.start_date).to eq(et.hs_payment.paid_at.to_date)
      expect(et.hs_payment.end_date).to eq(et.hs_payment.start_date + 1.month - 1.day)
    end
  end

  describe "POST #bepaid_notify" do
    it "handles a valid notification from bePaid with big (two months and few days) amount" do
      EripTransaction.destroy_all
      Payment.destroy_all
      bp_notification_m = bepaid_notification.dup
      bp_notification_m[:transaction][:amount] = 11000
      expect {
        post :bepaid_notify, params: bp_notification_m, format: :json
      }.to change(EripTransaction, :count).by(1)

      et = assigns(:erip_transaction)
      expect(response).to have_http_status(:created)
      expect(et.erip['service_no'].to_i).to eq(248)
      expect(et.amount).to eq(110)
      expect(et.hs_payment).not_to be_nil
      expect(et.hs_payment).to be_a(Payment)
      expect(et.hs_payment.amount).to eq(110)
      expect(et.hs_payment.payment_form).to eq("erip")
      expect(et.hs_payment.payment_type).to eq("membership")
      expect(et.hs_payment.paid_at).to eq(DateTime.parse('2016-12-07T14:40:12.010Z'))
      expect(et.hs_payment.start_date).to eq(et.hs_payment.paid_at.to_date)
      expect(et.hs_payment.end_date).to eq(et.hs_payment.start_date + 2.month + 6.days - 1.day)
    end
  end

  describe "POST #bepaid_notify" do
    it "handles a valid notification from bePaid with big (two months exactly) amount" do
      EripTransaction.destroy_all
      Payment.destroy_all
      bp_notification_m = bepaid_notification.dup
      bp_notification_m[:transaction][:amount] = 10000
      expect {
        post :bepaid_notify, params: bp_notification_m, format: :json
      }.to change(EripTransaction, :count).by(1)

      et = assigns(:erip_transaction)
      expect(response).to have_http_status(:created)
      expect(et.erip['service_no'].to_i).to eq(248)
      expect(et.amount).to eq(100)
      expect(et.hs_payment).not_to be_nil
      expect(et.hs_payment).to be_a(Payment)
      expect(et.hs_payment.amount).to eq(100)
      expect(et.hs_payment.payment_form).to eq("erip")
      expect(et.hs_payment.payment_type).to eq("membership")
      expect(et.hs_payment.paid_at).to eq(DateTime.parse('2016-12-07T14:40:12.010Z'))
      expect(et.hs_payment.start_date).to eq(et.hs_payment.paid_at.to_date)
      expect(et.hs_payment.end_date).to eq(et.hs_payment.start_date + 2.month - 1.day)
    end
  end
  describe "POST #bepaid_notify" do
    it "handles a valid notification from bePaid with too small amount" do
      EripTransaction.destroy_all
      Payment.destroy_all
      bp_notification_m = bepaid_notification.dup
      bp_notification_m[:transaction][:amount] = 100
      expect {
        post :bepaid_notify, params: bp_notification_m, format: :json
      }.to change(EripTransaction, :count).by(1)

      et = assigns(:erip_transaction)
      expect(response).to have_http_status(:created)
      expect(et.erip['service_no'].to_i).to eq(248)
      expect(et.amount).to eq(1)
      expect(et.hs_payment).not_to be_nil
      expect(et.hs_payment).to be_a(Payment)
      expect(et.hs_payment.amount).to eq(1)
      expect(et.hs_payment.payment_form).to eq("erip")
      expect(et.hs_payment.payment_type).to eq("membership")
      expect(et.hs_payment.paid_at).to eq(DateTime.parse('2016-12-07T14:40:12.010Z'))
      expect(et.hs_payment.start_date).to eq(et.hs_payment.paid_at.to_date)
      expect(et.hs_payment.end_date).to eq(et.hs_payment.start_date - 1.day)
    end
  end

  describe "POST #bepaid_notify for old user" do
    it "handles a valid notification from bePaid, last payment was > 2 weeks ago" do
      EripTransaction.destroy_all
      Payment.destroy_all
      p = Payment.create(paid_at: DateTime.parse('2016-12-07T14:40:12.010Z').to_date - 5.weeks,
                    amount: 10,
                    start_date: DateTime.parse('2016-12-07T14:40:12.010Z').to_date - 5.weeks,
                    end_date: DateTime.parse('2016-12-07T14:40:12.010Z').to_date - 4.weeks,
                    payment_type: 'membership',
                    payment_form: 'cash',
                    user_id: 2)
      expect(p.errors).to be_empty
      
      expect {
        post :bepaid_notify, params: bepaid_notification, format: :json
      }.to change(EripTransaction, :count).by(1)

      et = assigns(:erip_transaction)
      expect(response).to have_http_status(:created)
      expect(et.erip['service_no'].to_i).to eq(248)
      expect(et.amount).to eq(10)
      expect(et.hs_payment).not_to be_nil
      expect(et.hs_payment).to be_a(Payment)
      expect(et.hs_payment.amount).to eq(10)
      expect(et.hs_payment.payment_form).to eq("erip")
      expect(et.hs_payment.payment_type).to eq("membership")
      expect(et.hs_payment.paid_at).to eq(DateTime.parse('2016-12-07T14:40:12.010Z'))
      expect(et.hs_payment.start_date).to eq(et.hs_payment.paid_at.to_date)
      expect(et.hs_payment.end_date).to eq(et.hs_payment.paid_at.to_date + (10.0 / 50.0 * 30 - 1).to_i.days)
    end
  end

  describe "POST #bepaid_notify for old user" do
    it "handles a valid notification from bePaid, last payment was less than 2 weeks ago" do
      EripTransaction.destroy_all
      Payment.destroy_all
      p = Payment.create(paid_at: DateTime.parse('2016-12-07T14:40:12.010Z').to_date - 2.weeks,
                    amount: 10,
                    start_date: DateTime.parse('2016-12-07T14:40:12.010Z').to_date - 2.weeks,
                    end_date: DateTime.parse('2016-12-07T14:40:12.010Z').to_date - 1.weeks,
                    payment_type: 'membership',
                    payment_form: 'cash',
                    user_id: 2)
      expect(p.errors).to be_empty
      
      expect {
        post :bepaid_notify, params: bepaid_notification, format: :json
      }.to change(EripTransaction, :count).by(1)

      et = assigns(:erip_transaction)
      expect(response).to have_http_status(:created)
      expect(et.erip['service_no'].to_i).to eq(248)
      expect(et.amount).to eq(10)
      expect(et.hs_payment).not_to be_nil
      expect(et.hs_payment).to be_a(Payment)
      expect(et.hs_payment.amount).to eq(10)
      expect(et.hs_payment.payment_form).to eq("erip")
      expect(et.hs_payment.payment_type).to eq("membership")
      expect(et.hs_payment.paid_at).to eq(DateTime.parse('2016-12-07T14:40:12.010Z'))
      expect(et.hs_payment.start_date).to eq(et.hs_payment.paid_at.to_date - 1.week + 1.day)
      expect(et.hs_payment.end_date).to eq(et.hs_payment.start_date + (10.0 / 50.0 * 30 - 1).to_i.days)
    end
  end

  describe "POST #bepaid_notify for donation" do
    it "handles a valid notification about donation from bePaid" do
      EripTransaction.destroy_all
      Payment.destroy_all
      expect {
        post :bepaid_notify, params: bepaid_notification_donation, format: :json
      }.to change(EripTransaction, :count).by(1)

      et = assigns(:erip_transaction)
      expect(response).to have_http_status(:created)
      expect(et.amount).to eq(10)
      expect(et.hs_payment).not_to be_nil
      expect(et.hs_payment).to be_a(Payment)
      expect(et.hs_payment.amount).to eq(10)
      expect(et.hs_payment.payment_form).to eq("erip")
      expect(et.hs_payment.payment_type).to eq("donation")
      expect(et.hs_payment.paid_at).to eq(DateTime.parse('2016-12-07T14:40:12.010Z'))
      expect(et.hs_payment.start_date).to be_nil
      expect(et.hs_payment.end_date).to be_nil
      expect(et.hs_payment.project.id).to eq(2)
      expect(et.hs_payment.project.name).to eq(Project.find(2).name)
    end
  end


end
