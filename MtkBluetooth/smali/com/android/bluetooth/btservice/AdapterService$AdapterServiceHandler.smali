.class Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;
.super Landroid/os/Handler;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private processProfileServiceStateChanged(Lcom/android/bluetooth/btservice/ProfileService;I)V
    .locals 2

    .line 344
    const/16 v0, 0xa

    const-string v1, "BluetoothAdapterService"

    if-eq p2, v0, :cond_4

    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled profile state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 346
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/AdapterService;->access$100(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 347
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not registered (STATE_ON)."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 350
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/AdapterService;->access$200(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 351
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already running."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 354
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/AdapterService;->access$200(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    const-class p2, Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 356
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/AdapterService;->enableNative()Z

    goto/16 :goto_0

    .line 357
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$100(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object p2

    array-length p2, p2

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    .line 358
    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$100(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/AdapterService;->access$200(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_8

    .line 359
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBluetoothReady()V

    .line 360
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/AdapterService;->updateUuids()V

    .line 361
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/AdapterService;->setBluetoothClassFromConfig()V

    .line 362
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$400(Lcom/android/bluetooth/btservice/AdapterService;)V

    .line 363
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    .line 364
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    .line 365
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$500(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterState;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    goto/16 :goto_0

    .line 369
    :cond_4
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/AdapterService;->access$100(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 370
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not registered (STATE_OFF)."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 373
    :cond_5
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/AdapterService;->access$200(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 374
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not running."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void

    .line 377
    :cond_6
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/AdapterService;->access$200(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 379
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$200(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_7

    const-class p1, Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    .line 380
    invoke-static {p2}, Lcom/android/bluetooth/btservice/AdapterService;->access$200(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/btservice/ProfileService;

    invoke-virtual {p2}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 381
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$500(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterState;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    goto :goto_0

    .line 382
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$200(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_8

    .line 383
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/AdapterService;->disableNative()Z

    .line 389
    :cond_8
    :goto_0
    return-void
.end method

.method private registerProfileService(Lcom/android/bluetooth/btservice/ProfileService;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$100(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already registered."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAdapterService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$100(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method private unregisterProfileService(Lcom/android/bluetooth/btservice/ProfileService;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$100(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not registered (UNREGISTER)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAdapterService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$100(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 311
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v1, "handleMessage() - MESSAGE_PROFILE_SERVICE_UNREGISTERED"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 322
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/btservice/ProfileService;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->unregisterProfileService(Lcom/android/bluetooth/btservice/ProfileService;)V

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v1, "handleMessage() - MESSAGE_PROFILE_SERVICE_REGISTERED"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 318
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/btservice/ProfileService;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->registerProfileService(Lcom/android/bluetooth/btservice/ProfileService;)V

    .line 319
    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v1, "handleMessage() - MESSAGE_PROFILE_SERVICE_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 314
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/btservice/ProfileService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->processProfileServiceStateChanged(Lcom/android/bluetooth/btservice/ProfileService;I)V

    .line 315
    nop

    .line 325
    :goto_0
    return-void
.end method
