.class public final Lcom/shabakaty/downloader/ir0;
.super Ljava/lang/Object;
.source "DescriptorUtils.kt"

# interfaces
.implements Lcom/shabakaty/downloader/nh0$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/nh0$c;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shabakaty/downloader/ir0;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tq;

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ir0;->a:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->a()Lcom/shabakaty/downloader/tq;

    move-result-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "descriptor?.overriddenDescriptors ?: emptyList()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method
