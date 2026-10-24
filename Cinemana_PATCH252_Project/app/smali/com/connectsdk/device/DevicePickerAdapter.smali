.class public Lcom/connectsdk/device/DevicePickerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DevicePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/connectsdk/device/ConnectableDevice;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public currentDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/connectsdk/device/ConnectableDevice;",
            ">;"
        }
    .end annotation
.end field

.field public resource:I

.field public subTextViewResourceId:I

.field public textViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1090004

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/connectsdk/device/DevicePickerAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const v0, 0x1020014

    const v1, 0x1020015

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/connectsdk/device/DevicePickerAdapter;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/device/DevicePickerAdapter;->currentDevices:Ljava/util/HashMap;

    .line 5
    iput-object p1, p0, Lcom/connectsdk/device/DevicePickerAdapter;->context:Landroid/content/Context;

    .line 6
    iput p2, p0, Lcom/connectsdk/device/DevicePickerAdapter;->resource:I

    .line 7
    iput p3, p0, Lcom/connectsdk/device/DevicePickerAdapter;->textViewResourceId:I

    .line 8
    iput p4, p0, Lcom/connectsdk/device/DevicePickerAdapter;->subTextViewResourceId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/connectsdk/device/DevicePickerAdapter;->resource:I

    invoke-static {p2, v0, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/device/ConnectableDevice;

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getModelName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/high16 v1, -0x1000000

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iget v1, p0, Lcom/connectsdk/device/DevicePickerAdapter;->textViewResourceId:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v1, p0, Lcom/connectsdk/device/DevicePickerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 11
    :goto_1
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/connectsdk/discovery/DiscoveryManager;->getCapabilityFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 12
    :goto_2
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getConnectedServiceNames()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    if-nez v1, :cond_6

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 14
    :cond_6
    :goto_4
    iget v1, p0, Lcom/connectsdk/device/DevicePickerAdapter;->subTextViewResourceId:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 15
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 17
    :cond_7
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-object p2
.end method
