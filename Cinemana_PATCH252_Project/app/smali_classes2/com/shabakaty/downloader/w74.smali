.class public final Lcom/shabakaty/downloader/w74;
.super Ljava/lang/Object;
.source "ModuleClassResolver.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ku2;


# instance fields
.field public a:Lcom/shabakaty/downloader/ag6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/q20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w74;->a:Lcom/shabakaty/downloader/ag6;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ag6;->o(Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "resolver"

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
