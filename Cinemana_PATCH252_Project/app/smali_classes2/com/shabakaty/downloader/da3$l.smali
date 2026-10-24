.class public final Lcom/shabakaty/downloader/da3$l;
.super Lcom/shabakaty/downloader/da3;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/da3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/da3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/de0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/de0<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/da3;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/shabakaty/downloader/da3$l;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/zr3;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/zr3;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/shabakaty/downloader/da3$l;->a:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/shabakaty/downloader/zr3;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
