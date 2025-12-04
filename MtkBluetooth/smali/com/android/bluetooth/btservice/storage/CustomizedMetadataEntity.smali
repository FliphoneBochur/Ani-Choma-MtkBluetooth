.class Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;
.super Ljava/lang/Object;
.source "CustomizedMetadataEntity.java"


# instance fields
.field public companion_app:[B

.field public enhanced_settings_ui_uri:[B

.field public hardware_version:[B

.field public is_untethered_headset:[B

.field public main_icon:[B

.field public manufacturer_name:[B

.field public model_name:[B

.field public software_version:[B

.field public untethered_case_battery:[B

.field public untethered_case_charging:[B

.field public untethered_case_icon:[B

.field public untethered_left_battery:[B

.field public untethered_left_charging:[B

.field public untethered_left_icon:[B

.field public untethered_right_battery:[B

.field public untethered_right_charging:[B

.field public untethered_right_icon:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private metadataToString([B)Ljava/lang/String;
    .locals 1

    .line 82
    if-nez p1, :cond_0

    .line 83
    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v1, "manufacturer_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->manufacturer_name:[B

    .line 44
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "|model_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->model_name:[B

    .line 46
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "|software_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->software_version:[B

    .line 48
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "|hardware_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->hardware_version:[B

    .line 50
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "|companion_app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->companion_app:[B

    .line 52
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "|main_icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->main_icon:[B

    .line 54
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "|is_untethered_headset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->is_untethered_headset:[B

    .line 56
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "|untethered_left_icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_icon:[B

    .line 58
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, "|untethered_right_icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_icon:[B

    .line 60
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, "|untethered_case_icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_icon:[B

    .line 62
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, "|untethered_left_battery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_battery:[B

    .line 64
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "|untethered_right_battery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_battery:[B

    .line 66
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "|untethered_case_battery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_battery:[B

    .line 68
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "|untethered_left_charging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_charging:[B

    .line 70
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "|untethered_right_charging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_charging:[B

    .line 72
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "|untethered_case_charging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_charging:[B

    .line 74
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "|enhanced_settings_ui_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->enhanced_settings_ui_uri:[B

    .line 76
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->metadataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
