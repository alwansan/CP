.class public Lcom/shabakaty/downloader/cq3$b;
.super Lcom/shabakaty/downloader/cq3$c;
.source "ReflectProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cq3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/cq3$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rm1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rm1<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/cq3$c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/cq3$b;->t:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/cq3$b;->s:Lcom/shabakaty/downloader/rm1;

    return-void

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "initializer"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "kotlin/reflect/jvm/internal/ReflectProperties$LazyVal"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "<init>"

    aput-object v1, p1, v0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 4
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cq3$b;->t:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/cq3$c;->r:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/cq3$b;->s:Lcom/shabakaty/downloader/rm1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/cq3$c;->r:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 5
    :goto_0
    iput-object v1, p0, Lcom/shabakaty/downloader/cq3$b;->t:Ljava/lang/Object;

    return-object v0
.end method
