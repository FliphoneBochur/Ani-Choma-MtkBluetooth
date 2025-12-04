.class public Lcom/android/bluetooth/map/BluetoothMapSettings;
.super Landroid/app/Activity;
.source "BluetoothMapSettings.java"


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapSettings"

.field private static final V:Z


# instance fields
.field mGroups:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;>;"
        }
    .end annotation
.end field

.field mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapSettings;->D:Z

    .line 32
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapSettings;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettings;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const p1, 0x7f090003

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettings;->setContentView(I)V

    .line 44
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettings;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->parsePackages(Z)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettings;->mGroups:Ljava/util/LinkedHashMap;

    .line 48
    nop

    .line 49
    const p1, 0x7f070039

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ExpandableListView;

    .line 51
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettings;->mGroups:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettings;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    .line 53
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->getAccountsEnabledCount()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;-><init>(Landroid/app/Activity;Landroid/widget/ExpandableListView;Ljava/util/LinkedHashMap;I)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 55
    return-void
.end method
