.class public Lcom/skydoves/powerspinner/PowerSpinnerView_LifecycleAdapter;
.super Ljava/lang/Object;
.source "PowerSpinnerView_LifecycleAdapter.java"

# interfaces
.implements Landroidx/lifecycle/c;


# instance fields
.field public final a:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView_LifecycleAdapter;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/rh2;Landroidx/lifecycle/e$b;ZLcom/shabakaty/downloader/ft2;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p3, :cond_1

    return-void

    .line 1
    :cond_1
    sget-object p3, Landroidx/lifecycle/e$b;->ON_DESTROY:Landroidx/lifecycle/e$b;

    if-ne p2, p3, :cond_5

    if-eqz v1, :cond_4

    const-string p2, "onDestroy"

    .line 2
    iget-object p3, p4, Lcom/shabakaty/downloader/ft2;->a:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    .line 4
    :cond_3
    iget-object p4, p4, Lcom/shabakaty/downloader/ft2;->a:Ljava/util/Map;

    or-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr p1, v0

    if-eqz p1, :cond_5

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView_LifecycleAdapter;->a:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->onDestroy()V

    :cond_5
    return-void
.end method
