.class public Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BluetoothMapSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;,
        Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapSettingsAdapter"

.field private static final V:Z


# instance fields
.field public mActivity:Landroid/app/Activity;

.field private mCheckAll:Z

.field private mGroupStatus:[I

.field public mInflater:Landroid/view/LayoutInflater;

.field private mMainGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation
.end field

.field mPositionArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mProupList:Ljava/util/LinkedHashMap;
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

.field private mSlotsLeft:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->D:Z

    .line 46
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ExpandableListView;Ljava/util/LinkedHashMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/ExpandableListView;",
            "Ljava/util/LinkedHashMap<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;>;I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mCheckAll:Z

    .line 57
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    .line 64
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mGroupStatus:[I

    .line 67
    iget p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    .line 69
    new-instance p1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)V

    invoke-virtual {p2, p1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    .line 82
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    .line 83
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 82
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 84
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)[I
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mGroupStatus:[I

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getChild(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->showWarning(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mCheckAll:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mCheckAll:Z

    return p1
.end method

.method private getChild(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method private showWarning(Ljava/lang/String;)V
    .locals 2

    .line 350
    nop

    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 353
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 355
    return-void
.end method

.method private updateSlotCounter(Z)V
    .locals 2

    .line 329
    if-eqz p1, :cond_0

    .line 330
    iget p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    goto :goto_0

    .line 332
    :cond_0
    iget p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    .line 336
    :goto_0
    iget p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    if-gtz p1, :cond_1

    .line 337
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0e0017

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 339
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e0015

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mSlotsLeft:I

    .line 340
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 343
    :goto_1
    const/4 v0, 0x0

    .line 345
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 347
    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    return-object p1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getChild(II)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    .line 100
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 109
    if-nez p4, :cond_0

    .line 110
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p4, 0x7f090005

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 111
    new-instance p3, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;

    invoke-direct {p3, p0, p5}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;)V

    .line 112
    const p5, 0x7f070036

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/CheckBox;

    iput-object p5, p3, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;->cb:Landroid/widget/CheckBox;

    .line 113
    const p5, 0x7f070037

    .line 114
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;->title:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;

    .line 119
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getChild(II)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object p2

    .line 120
    iget-object p5, p3, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;->cb:Landroid/widget/CheckBox;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;ILcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    invoke-virtual {p5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    iget-object p1, p3, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;->cb:Landroid/widget/CheckBox;

    iget-boolean p5, p2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-virtual {p1, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    iget-object p1, p3, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$ChildHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->D:Z

    if-eqz p1, :cond_1

    .line 186
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->sCheckedChilds:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "childs are"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mProupList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    return-object p1
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getGroup(I)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mMainGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .line 221
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 230
    if-nez p3, :cond_0

    .line 231
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f090004

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 232
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;

    invoke-direct {p2, p0, p4}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$1;)V

    .line 233
    const p4, 0x7f070033

    .line 234
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    iput-object p4, p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->cb:Landroid/widget/CheckBox;

    .line 235
    const p4, 0x7f070034

    .line 236
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->imageView:Landroid/widget/ImageView;

    .line 237
    const p4, 0x7f070035

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->title:Landroid/widget/TextView;

    .line 239
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;

    .line 244
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getGroup(I)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object p1

    .line 245
    iget-object p4, p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object p4, p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object p4, p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->cb:Landroid/widget/CheckBox;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    invoke-virtual {p4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 285
    iget-object p2, p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$GroupHolder;->cb:Landroid/widget/CheckBox;

    iget-boolean p1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 286
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    .line 297
    const/4 p1, 0x1

    return p1
.end method

.method public onGroupCollapsed(I)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 212
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0

    .line 216
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 217
    return-void
.end method

.method public updateAccount(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V
    .locals 5

    .line 313
    iget-boolean v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->updateSlotCounter(Z)V

    .line 314
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->D:Z

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating account settings for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Value is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapSettingsAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 321
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 322
    iget-boolean v3, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "flag_expose"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    return-void
.end method
