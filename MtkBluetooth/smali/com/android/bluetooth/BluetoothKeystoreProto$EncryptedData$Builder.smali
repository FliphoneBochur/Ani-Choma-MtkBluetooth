.class public final Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BluetoothKeystoreProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;",
        "Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 305
    invoke-static {}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->access$000()Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/BluetoothKeystoreProto$1;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAuthenticationData()Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->copyOnWrite()V

    .line 399
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->access$400(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;)V

    .line 400
    return-object p0
.end method

.method public clearEncryptedData()Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->access$600(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;)V

    .line 431
    return-object p0
.end method

.method public clearInitVector()Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->copyOnWrite()V

    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->access$200(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;)V

    .line 353
    return-object p0
.end method

.method public getAuthenticationData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getAuthenticationData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getEncryptedData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInitVector()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getInitVector()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthenticationData()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->hasAuthenticationData()Z

    move-result v0

    return v0
.end method

.method public hasEncryptedData()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->hasEncryptedData()Z

    move-result v0

    return v0
.end method

.method public hasInitVector()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->hasInitVector()Z

    move-result v0

    return v0
.end method

.method public setAuthenticationData(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->copyOnWrite()V

    .line 387
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->access$300(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;Lcom/google/protobuf/ByteString;)V

    .line 388
    return-object p0
.end method

.method public setEncryptedData(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->copyOnWrite()V

    .line 422
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->access$500(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;Lcom/google/protobuf/ByteString;)V

    .line 423
    return-object p0
.end method

.method public setInitVector(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->copyOnWrite()V

    .line 340
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->access$100(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;Lcom/google/protobuf/ByteString;)V

    .line 341
    return-object p0
.end method
