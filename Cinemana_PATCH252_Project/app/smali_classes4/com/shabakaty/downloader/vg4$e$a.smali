.class public final Lcom/shabakaty/downloader/vg4$e$a;
.super Lcom/shabakaty/downloader/af2;
.source "SubtitlesSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/vg4$e;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/fg4;",
        "Ljava/lang/Integer;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/vg4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vg4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/vg4$e$a;->r:Lcom/shabakaty/downloader/vg4;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/fg4;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    const-string p2, "item"

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/vg4$e$a;->r:Lcom/shabakaty/downloader/vg4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ih4;

    const-string v0, "value"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/fh4;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/shabakaty/downloader/fh4;-><init>(Lcom/shabakaty/downloader/ih4;Lcom/shabakaty/downloader/fg4;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/xk;->i(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/vg4$e$a;->r:Lcom/shabakaty/downloader/vg4;

    invoke-static {p1}, Lcom/shabakaty/downloader/vg4;->i2(Lcom/shabakaty/downloader/vg4;)V

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
