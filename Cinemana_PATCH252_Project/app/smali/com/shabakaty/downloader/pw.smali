.class public final Lcom/shabakaty/downloader/pw;
.super Lcom/shabakaty/downloader/ui4;
.source "CastButton.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.home_activity.CastButton$initCast$3"
    f = "CastButton.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_activity/CastButton;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/ui/home_activity/CastButton;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pw;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/pw;->w:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pw;

    iget-object v1, p0, Lcom/shabakaty/downloader/pw;->w:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/pw;-><init>(Lcom/shabakaty/cinemana/ui/home_activity/CastButton;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/pw;->v:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/pw;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/downloader/pw;

    iget-object v1, p0, Lcom/shabakaty/downloader/pw;->w:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/pw;-><init>(Lcom/shabakaty/cinemana/ui/home_activity/CastButton;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/pw;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/pw;->v:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/se0;

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/nh3;->t(Lcom/shabakaty/downloader/se0;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/pw;->w:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/pw;->w:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/pw;->w:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    new-instance v0, Lcom/shabakaty/downloader/ck;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ck;-><init>(Lcom/shabakaty/cinemana/ui/home_activity/CastButton;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
