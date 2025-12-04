.class Lcom/android/bluetooth/gatt/ScanClient;
.super Ljava/lang/Object;
.source "ScanClient.java"


# static fields
.field private static final DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;


# instance fields
.field public appDied:Z

.field public appUid:I

.field public associatedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public eligibleForSanitizedExposureNotification:Z

.field public filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field public hasLocationPermission:Z

.field public hasNetworkSettingsPermission:Z

.field public hasNetworkSetupWizardPermission:Z

.field public hasScanWithoutLocationPermission:Z

.field public isQApp:Z

.field public passiveSettings:Landroid/bluetooth/le/ScanSettings;

.field public scannerId:I

.field public settings:Landroid/bluetooth/le/ScanSettings;

.field public stats:Lcom/android/bluetooth/gatt/AppScanStats;

.field public storages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field public userHandle:Landroid/os/UserHandle;

.field public uuids:[Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 56
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/gatt/ScanClient;->DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    .line 55
    return-void
.end method

.method constructor <init>(I)V
    .locals 7

    .line 59
    const/4 v0, 0x0

    new-array v3, v0, [Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/gatt/ScanClient;->DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(I[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 60
    return-void
.end method

.method constructor <init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)V"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    new-array v3, v0, [Ljava/util/UUID;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(I[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 68
    return-void
.end method

.method constructor <init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    new-array v3, v0, [Ljava/util/UUID;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(I[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 73
    return-void
.end method

.method constructor <init>(I[Ljava/util/UUID;)V
    .locals 6

    .line 63
    sget-object v3, Lcom/android/bluetooth/gatt/ScanClient;->DEFAULT_SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(I[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 64
    return-void
.end method

.method private constructor <init>(I[Ljava/util/UUID;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/util/UUID;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    .line 77
    iput p1, p0, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    .line 78
    iput-object p2, p0, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    .line 79
    iput-object p3, p0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 80
    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanClient;->passiveSettings:Landroid/bluetooth/le/ScanSettings;

    .line 81
    iput-object p4, p0, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    .line 82
    iput-object p5, p0, Lcom/android/bluetooth/gatt/ScanClient;->storages:Ljava/util/List;

    .line 83
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/gatt/ScanClient;->appUid:I

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 88
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 89
    return v0

    .line 91
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    check-cast p1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 95
    iget v2, p0, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 92
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
