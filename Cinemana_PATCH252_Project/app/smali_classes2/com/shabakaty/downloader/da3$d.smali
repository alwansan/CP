.class public final Lcom/shabakaty/downloader/da3$d;
.super Lcom/shabakaty/downloader/da3;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/da3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
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
.field public final a:Ljava/lang/String;

.field public final b:Lcom/shabakaty/downloader/de0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/de0<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/de0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/de0<",
            "TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/da3;-><init>()V

    const-string v0, "name == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/da3$d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/da3$d;->b:Lcom/shabakaty/downloader/de0;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/zr3;Ljava/lang/Object;)V
    .locals 1
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
    iget-object v0, p0, Lcom/shabakaty/downloader/da3$d;->b:Lcom/shabakaty/downloader/de0;

    invoke-interface {v0, p2}, Lcom/shabakaty/downloader/de0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/da3$d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/zr3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
