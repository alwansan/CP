.class public final Lcom/shabakaty/downloader/vg4$e;
.super Lcom/shabakaty/downloader/ui4;
.source "SubtitlesSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.settings.SubtitlesSettingsFragment$onSubtitleEdgeTypeClicked$1"
    f = "SubtitlesSettingsFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/vg4;->p1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
.field public final synthetic v:Lcom/shabakaty/downloader/vg4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vg4;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/vg4$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/vg4$e;->v:Lcom/shabakaty/downloader/vg4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/vg4$e;

    iget-object v0, p0, Lcom/shabakaty/downloader/vg4$e;->v:Lcom/shabakaty/downloader/vg4;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/vg4$e;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/vg4$e;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
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

    new-instance p1, Lcom/shabakaty/downloader/vg4$e;

    iget-object v0, p0, Lcom/shabakaty/downloader/vg4$e;->v:Lcom/shabakaty/downloader/vg4;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/vg4$e;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/shabakaty/downloader/fg4;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/fg4$c;->c:Lcom/shabakaty/downloader/fg4$c;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lcom/shabakaty/downloader/fg4$b;->c:Lcom/shabakaty/downloader/fg4$b;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    sget-object v0, Lcom/shabakaty/downloader/fg4$d;->c:Lcom/shabakaty/downloader/fg4$d;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    sget-object v0, Lcom/shabakaty/downloader/fg4$e;->c:Lcom/shabakaty/downloader/fg4$e;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    sget-object v0, Lcom/shabakaty/downloader/fg4$a;->c:Lcom/shabakaty/downloader/fg4$a;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/vg4$e;->v:Lcom/shabakaty/downloader/vg4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ih4;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ih4;->f:Lcom/shabakaty/downloader/n24;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/n24;->g()Lcom/shabakaty/downloader/pg4;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/pg4;->d:Lcom/shabakaty/downloader/fg4;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/vg4$e;->v:Lcom/shabakaty/downloader/vg4;

    new-instance v2, Lcom/shabakaty/downloader/vg4$e$a;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/vg4$e$a;-><init>(Lcom/shabakaty/downloader/vg4;)V

    new-instance v3, Lcom/shabakaty/downloader/vg4$e$b;

    iget-object v4, p0, Lcom/shabakaty/downloader/vg4$e;->v:Lcom/shabakaty/downloader/vg4;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/vg4$e$b;-><init>(Lcom/shabakaty/downloader/vg4;)V

    invoke-static {v1, v0, p1, v2, v3}, Lcom/shabakaty/downloader/vg4;->j2(Lcom/shabakaty/downloader/vg4;Ljava/lang/Object;Ljava/util/List;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/tm1;)V

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
