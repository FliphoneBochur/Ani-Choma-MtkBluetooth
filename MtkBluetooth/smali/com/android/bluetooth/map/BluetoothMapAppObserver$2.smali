.class Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapAppObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapAppObserver;->createReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 250
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$200()Z

    move-result p1

    const-string v0, "BluetoothMapAppObserver"

    if-eqz p1, :cond_0

    .line 251
    const-string p1, "onReceive\n"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 255
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$200()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 259
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The installed package is: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    sget-object p2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 263
    const/4 v1, 0x0

    .line 264
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/content/Intent;

    .line 266
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.bluetooth.action.BLUETOOTH_MAP_PROVIDER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 267
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.bluetooth.action.BLUETOOTH_MAP_IM_PROVIDER"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    aput-object v4, v3, v8

    .line 270
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$400(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$302(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;

    .line 272
    move v4, v6

    :goto_0
    const-string v8, "Found "

    if-ge v4, v2, :cond_7

    aget-object v9, v3, v4

    .line 273
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    .line 274
    invoke-static {v10}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$300(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 275
    if-eqz v10, :cond_6

    .line 276
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$200()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 277
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " application(s) with intent "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 277
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 282
    if-eqz v10, :cond_5

    .line 284
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 285
    nop

    .line 286
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    sget-object p2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v10

    goto :goto_2

    .line 289
    :cond_3
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    sget-object p2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, v10

    goto :goto_2

    .line 289
    :cond_4
    move-object v1, v10

    goto :goto_2

    .line 296
    :cond_5
    goto :goto_1

    .line 272
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 300
    :cond_7
    if-eqz v1, :cond_b

    .line 301
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$200()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " application of type "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_8
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    .line 306
    invoke-virtual {p1, v1, v6, p2}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->createAppItem(Landroid/content/pm/ResolveInfo;ZLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object p1

    .line 307
    if-eqz p1, :cond_b

    .line 308
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    .line 310
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    iget-object p2, p2, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    .line 311
    invoke-virtual {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object p2

    .line 312
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$500(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 316
    :cond_9
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 317
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$200()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 320
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The removed package is: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_a
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$600(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object p1

    .line 324
    if-eqz p1, :cond_c

    .line 325
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->unregisterObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    .line 326
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->access$500(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 316
    :cond_b
    :goto_3
    nop

    .line 329
    :cond_c
    :goto_4
    return-void
.end method
