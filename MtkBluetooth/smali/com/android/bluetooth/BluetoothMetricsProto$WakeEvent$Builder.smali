.class public final Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$WakeEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8210
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->access$13300()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8211
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V
    .locals 0

    .line 8203
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEventTimeMillis()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8455
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->copyOnWrite()V

    .line 8456
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->access$14300(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V

    .line 8457
    return-object p0
.end method

.method public clearName()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8395
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->copyOnWrite()V

    .line 8396
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->access$14000(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V

    .line 8397
    return-object p0
.end method

.method public clearRequestor()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8321
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->copyOnWrite()V

    .line 8322
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->access$13700(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V

    .line 8323
    return-object p0
.end method

.method public clearWakeEventType()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8256
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->copyOnWrite()V

    .line 8257
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->access$13500(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V

    .line 8258
    return-object p0
.end method

.method public getEventTimeMillis()J
    .locals 2

    .line 8433
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->getEventTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 8360
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8372
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestor()Ljava/lang/String;
    .locals 1

    .line 8283
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->getRequestor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8296
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->getRequestorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWakeEventType()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;
    .locals 1

    .line 8234
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->getWakeEventType()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    move-result-object v0

    return-object v0
.end method

.method public hasEventTimeMillis()Z
    .locals 1

    .line 8422
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->hasEventTimeMillis()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .line 8349
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasRequestor()Z
    .locals 1

    .line 8271
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->hasRequestor()Z

    move-result v0

    return v0
.end method

.method public hasWakeEventType()Z
    .locals 1

    .line 8223
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->hasWakeEventType()Z

    move-result v0

    return v0
.end method

.method public setEventTimeMillis(J)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8443
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->copyOnWrite()V

    .line 8444
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->access$14200(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;J)V

    .line 8445
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8383
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->copyOnWrite()V

    .line 8384
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->access$13900(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;Ljava/lang/String;)V

    .line 8385
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8408
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->copyOnWrite()V

    .line 8409
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->access$14100(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;Lcom/google/protobuf/ByteString;)V

    .line 8410
    return-object p0
.end method

.method public setRequestor(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8308
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->copyOnWrite()V

    .line 8309
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->access$13600(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;Ljava/lang/String;)V

    .line 8310
    return-object p0
.end method

.method public setRequestorBytes(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8335
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->copyOnWrite()V

    .line 8336
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->access$13800(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;Lcom/google/protobuf/ByteString;)V

    .line 8337
    return-object p0
.end method

.method public setWakeEventType(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8244
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->copyOnWrite()V

    .line 8245
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->access$13400(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;)V

    .line 8246
    return-object p0
.end method
