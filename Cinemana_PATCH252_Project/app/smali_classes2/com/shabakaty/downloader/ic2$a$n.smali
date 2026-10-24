.class public final Lcom/shabakaty/downloader/ic2$a$n;
.super Lcom/shabakaty/downloader/af2;
.source "KClassImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ic2$a;-><init>(Lcom/shabakaty/downloader/ic2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ic2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ic2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ic2$a$n;->r:Lcom/shabakaty/downloader/ic2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2$a$n;->r:Lcom/shabakaty/downloader/ic2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2$a$n;->r:Lcom/shabakaty/downloader/ic2;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ic2;->r()Lcom/shabakaty/downloader/v20;

    move-result-object v0

    .line 6
    iget-boolean v2, v0, Lcom/shabakaty/downloader/v20;->c:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
