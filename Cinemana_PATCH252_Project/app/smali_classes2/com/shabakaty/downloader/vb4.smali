.class public final Lcom/shabakaty/downloader/vb4;
.super Lcom/shabakaty/downloader/rt4;
.source "StarProjectionImpl.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/kt4;

.field public final b:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kt4;)V
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/rt4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vb4;->a:Lcom/shabakaty/downloader/kt4;

    .line 3
    sget-object p1, Lkotlin/a;->s:Lkotlin/a;

    new-instance v0, Lcom/shabakaty/downloader/vb4$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vb4$a;-><init>(Lcom/shabakaty/downloader/vb4;)V

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/vb4;->b:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/xz4;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vb4;->b:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qe2;

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qt4;
    .locals 0

    return-object p0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
