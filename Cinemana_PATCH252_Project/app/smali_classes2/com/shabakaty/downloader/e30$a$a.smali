.class public final Lcom/shabakaty/downloader/e30$a$a;
.super Lcom/shabakaty/downloader/qs4$a$a;
.source "ClassicTypeSystemContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/e30$a;->o0(Lcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/qs4$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/e30;

.field public final synthetic b:Lcom/shabakaty/downloader/wt4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/wt4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/e30$a$a;->a:Lcom/shabakaty/downloader/e30;

    iput-object p2, p0, Lcom/shabakaty/downloader/e30$a$a;->b:Lcom/shabakaty/downloader/wt4;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qs4$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;
    .locals 2

    const-string p1, "type"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/e30$a$a;->a:Lcom/shabakaty/downloader/e30;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/e30$a$a;->b:Lcom/shabakaty/downloader/wt4;

    .line 3
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/yt4;->L(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/qe2;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    .line 5
    invoke-virtual {v0, p2, v1}, Lcom/shabakaty/downloader/wt4;->i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p2

    const-string v0, "substitutor.safeSubstitu\u2026VARIANT\n                )"

    .line 6
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/e30;->c(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    return-object p1
.end method
