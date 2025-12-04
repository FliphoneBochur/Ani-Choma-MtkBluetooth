.class public final Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSessionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4809
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$7200()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4810
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V
    .locals 0

    .line 4802
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearA2DpSession()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5188
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5189
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$9100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    .line 5190
    return-object p0
.end method

.method public clearConnectionTechnologyType()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 4902
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 4903
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$7600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    .line 4904
    return-object p0
.end method

.method public clearDeviceConnectedTo()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5046
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5047
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$8300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    .line 5048
    return-object p0
.end method

.method public clearDisconnectReason()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4962
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 4963
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$7800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    .line 4964
    return-object p0
.end method

.method public clearDisconnectReasonType()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5235
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5236
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$9300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    .line 5237
    return-object p0
.end method

.method public clearRfcommSession()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5117
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5118
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$8700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    .line 5119
    return-object p0
.end method

.method public clearSessionDurationSec()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 4855
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 4856
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$7400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    .line 4857
    return-object p0
.end method

.method public getA2DpSession()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1

    .line 5142
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->getA2DpSession()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionTechnologyType()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;
    .locals 1

    .line 4880
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->getConnectionTechnologyType()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceConnectedTo()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1

    .line 5000
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->getDeviceConnectedTo()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectReason()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4927
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->getDisconnectReason()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4939
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->getDisconnectReasonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectReasonType()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;
    .locals 1

    .line 5213
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->getDisconnectReasonType()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    move-result-object v0

    return-object v0
.end method

.method public getRfcommSession()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1

    .line 5071
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->getRfcommSession()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    move-result-object v0

    return-object v0
.end method

.method public getSessionDurationSec()J
    .locals 2

    .line 4833
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->getSessionDurationSec()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasA2DpSession()Z
    .locals 1

    .line 5131
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->hasA2DpSession()Z

    move-result v0

    return v0
.end method

.method public hasConnectionTechnologyType()Z
    .locals 1

    .line 4869
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->hasConnectionTechnologyType()Z

    move-result v0

    return v0
.end method

.method public hasDeviceConnectedTo()Z
    .locals 1

    .line 4989
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->hasDeviceConnectedTo()Z

    move-result v0

    return v0
.end method

.method public hasDisconnectReason()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4916
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->hasDisconnectReason()Z

    move-result v0

    return v0
.end method

.method public hasDisconnectReasonType()Z
    .locals 1

    .line 5202
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->hasDisconnectReasonType()Z

    move-result v0

    return v0
.end method

.method public hasRfcommSession()Z
    .locals 1

    .line 5060
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->hasRfcommSession()Z

    move-result v0

    return v0
.end method

.method public hasSessionDurationSec()Z
    .locals 1

    .line 4822
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->hasSessionDurationSec()Z

    move-result v0

    return v0
.end method

.method public mergeA2DpSession(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5177
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5178
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$9000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 5179
    return-object p0
.end method

.method public mergeDeviceConnectedTo(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5035
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5036
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$8200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V

    .line 5037
    return-object p0
.end method

.method public mergeRfcommSession(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5106
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5107
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$8600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V

    .line 5108
    return-object p0
.end method

.method public setA2DpSession(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5165
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5166
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$8900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;)V

    .line 5167
    return-object p0
.end method

.method public setA2DpSession(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5152
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5153
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$8800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    .line 5154
    return-object p0
.end method

.method public setConnectionTechnologyType(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 4890
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 4891
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$7500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;)V

    .line 4892
    return-object p0
.end method

.method public setDeviceConnectedTo(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5023
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5024
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$8100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;)V

    .line 5025
    return-object p0
.end method

.method public setDeviceConnectedTo(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5010
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5011
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$8000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V

    .line 5012
    return-object p0
.end method

.method public setDisconnectReason(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4950
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 4951
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$7700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Ljava/lang/String;)V

    .line 4952
    return-object p0
.end method

.method public setDisconnectReasonBytes(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4975
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 4976
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$7900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/google/protobuf/ByteString;)V

    .line 4977
    return-object p0
.end method

.method public setDisconnectReasonType(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5223
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5224
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$9200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;)V

    .line 5225
    return-object p0
.end method

.method public setRfcommSession(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5094
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5095
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$8500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;)V

    .line 5096
    return-object p0
.end method

.method public setRfcommSession(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 5081
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 5082
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$8400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V

    .line 5083
    return-object p0
.end method

.method public setSessionDurationSec(J)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 4843
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->copyOnWrite()V

    .line 4844
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->access$7300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;J)V

    .line 4845
    return-object p0
.end method
