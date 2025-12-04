.class public final enum Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
.super Ljava/lang/Enum;
.source "BluetoothMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private static sAllValues:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 121
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v1, "EMAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v1, "SMS_GSM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v1, "SMS_CDMA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v1, "MMS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v1, "IM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 120
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v8, v1, v2

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->$VALUES:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 122
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->values()[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->sAllValues:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 2

    .line 125
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->sAllValues:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 126
    aget-object p0, v0, p0

    return-object p0

    .line 128
    :cond_0
    sget-object p0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .line 120
    const-class v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .line 120
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->$VALUES:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v0}, [Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method
