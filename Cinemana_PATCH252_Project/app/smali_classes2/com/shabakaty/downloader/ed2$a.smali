.class public final Lcom/shabakaty/downloader/ed2$a;
.super Lcom/shabakaty/downloader/kd2$b;
.source "KProperty0Impl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ed2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/kd2$b<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final v:Lcom/shabakaty/downloader/ed2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ed2<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ed2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ed2<",
            "+TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/kd2$b;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ed2$a;->v:Lcom/shabakaty/downloader/ed2;

    return-void
.end method


# virtual methods
.method public i()Lcom/shabakaty/downloader/kd2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ed2$a;->v:Lcom/shabakaty/downloader/ed2;

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ed2$a;->v:Lcom/shabakaty/downloader/ed2;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ed2;->l()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
