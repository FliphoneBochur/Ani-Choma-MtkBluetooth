.class Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;
.super Ljava/lang/Object;
.source "BluetoothMapSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupHolder"
.end annotation


# instance fields
.field public cb:Landroid/widget/CheckBox;

.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)V

    return-void
.end method
