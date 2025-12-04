.class Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;
.super Ljava/lang/Object;
.source "ProfilePrioritiesEntity.java"


# instance fields
.field public a2dp_connection_policy:I

.field public a2dp_sink_connection_policy:I

.field public hearing_aid_connection_policy:I

.field public hfp_client_connection_policy:I

.field public hfp_connection_policy:I

.field public hid_host_connection_policy:I

.field public map_client_connection_policy:I

.field public map_connection_policy:I

.field public pan_connection_policy:I

.field public pbap_client_connection_policy:I

.field public pbap_connection_policy:I

.field public sap_connection_policy:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_connection_policy:I

    .line 41
    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_sink_connection_policy:I

    .line 42
    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_connection_policy:I

    .line 43
    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_client_connection_policy:I

    .line 44
    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hid_host_connection_policy:I

    .line 45
    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pan_connection_policy:I

    .line 46
    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_connection_policy:I

    .line 47
    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_client_connection_policy:I

    .line 48
    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_connection_policy:I

    .line 49
    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->sap_connection_policy:I

    .line 50
    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hearing_aid_connection_policy:I

    .line 51
    iput v0, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_client_connection_policy:I

    .line 52
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v1, "A2DP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "|A2DP_SINK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_sink_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "|HEADSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, "|HEADSET_CLIENT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_client_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "|HID_HOST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hid_host_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, "|PAN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pan_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "|PBAP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, "|PBAP_CLIENT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_client_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "|MAP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "|MAP_CLIENT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_client_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "|SAP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->sap_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "|HEARING_AID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hearing_aid_connection_policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
