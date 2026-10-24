.class public final Lcom/shabakaty/downloader/hd2$a;
.super Lcom/shabakaty/downloader/kd2$b;
.source "KProperty2Impl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/hd2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/kd2$b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final v:Lcom/shabakaty/downloader/hd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hd2<",
            "TD;TE;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hd2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hd2<",
            "TD;TE;+TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/kd2$b;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/hd2$a;->v:Lcom/shabakaty/downloader/hd2;

    return-void
.end method


# virtual methods
.method public i()Lcom/shabakaty/downloader/kd2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hd2$a;->v:Lcom/shabakaty/downloader/hd2;

    return-object v0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hd2$a;->v:Lcom/shabakaty/downloader/hd2;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/hd2;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
