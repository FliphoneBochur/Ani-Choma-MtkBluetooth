.class Landroidx/fragment/app/FragmentLayoutInflaterFactory;
.super Ljava/lang/Object;
.source "FragmentLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 37
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {v0, p3, p4, v1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/FragmentManager;)V

    return-object v0

    .line 54
    :cond_0
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 55
    return-object v1

    .line 58
    :cond_1
    const-string v0, "class"

    invoke-interface {p4, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "fname":Ljava/lang/String;
    sget-object v2, Landroidx/fragment/R$styleable;->Fragment:[I

    invoke-virtual {p3, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 60
    .local v2, "a":Landroid/content/res/TypedArray;
    if-nez v0, :cond_2

    .line 61
    sget v3, Landroidx/fragment/R$styleable;->Fragment_android_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_2
    sget v3, Landroidx/fragment/R$styleable;->Fragment_android_id:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 64
    .local v3, "id":I
    sget v5, Landroidx/fragment/R$styleable;->Fragment_android_tag:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    if-eqz v0, :cond_11

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v6, v0}, Landroidx/fragment/app/FragmentFactory;->isFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_4

    .line 73
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    .line 74
    .local v6, "containerId":I
    :goto_0
    if-ne v6, v4, :cond_6

    if-ne v3, v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_1

    .line 75
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_6
    :goto_1
    if-eq v3, v4, :cond_7

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 84
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    :cond_7
    if-nez v1, :cond_8

    if-eqz v5, :cond_8

    .line 85
    iget-object v7, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v7, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 87
    :cond_8
    if-nez v1, :cond_9

    if-eq v6, v4, :cond_9

    .line 88
    iget-object v4, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 91
    :cond_9
    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateView: id=0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " fname="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " existing="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    const-string v7, "FragmentManager"

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_a
    const/4 v4, 0x1

    if-nez v1, :cond_c

    .line 98
    iget-object v7, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v7

    .line 99
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 98
    invoke-virtual {v7, v8, v0}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 100
    iput-boolean v4, v1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 101
    if-eqz v3, :cond_b

    move v7, v3

    goto :goto_2

    :cond_b
    move v7, v6

    :goto_2
    iput v7, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 102
    iput v6, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 103
    iput-object v5, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 104
    iput-boolean v4, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 105
    iget-object v4, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object v4, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 106
    iget-object v4, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v4

    iput-object v4, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 107
    iget-object v4, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v4, p4, v7}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 109
    iget-object v4, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v4

    .line 110
    .local v4, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    iget-object v7, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v7, v1}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 112
    .end local v4    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_c
    iget-boolean v7, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez v7, :cond_10

    .line 122
    iput-boolean v4, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 123
    iget-object v4, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object v4, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 124
    iget-object v4, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v4

    iput-object v4, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 126
    iget-object v4, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v4, p4, v7}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 128
    iget-object v4, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v4

    .line 133
    .restart local v4    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :goto_3
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 135
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentStateManager;->ensureInflatedView()V

    .line 137
    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v7, :cond_f

    .line 141
    if-eqz v3, :cond_d

    .line 142
    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setId(I)V

    .line 144
    :cond_d
    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_e

    .line 145
    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    :cond_e
    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    return-object v7

    .line 138
    :cond_f
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " did not create a view."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 115
    .end local v4    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_10
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": Duplicate id 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", or parent id 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with another fragment for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    .end local v1    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v6    # "containerId":I
    :cond_11
    :goto_4
    return-object v1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
