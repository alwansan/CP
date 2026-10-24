.class public abstract Lcom/shabakaty/downloader/pp1$c;
.super Lcom/shabakaty/downloader/pp1$b;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/pp1$d<",
        "TMessageType;>;BuilderType:",
        "Lcom/shabakaty/downloader/pp1$c<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/shabakaty/downloader/pp1$b<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public s:Lcom/shabakaty/downloader/ua1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ua1<",
            "Lcom/shabakaty/downloader/pp1$e;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$b;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ua1;->d:Lcom/shabakaty/downloader/ua1;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/pp1$c;->s:Lcom/shabakaty/downloader/ua1;

    return-void
.end method


# virtual methods
.method public final l(Lcom/shabakaty/downloader/pp1$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pp1$c;->t:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$c;->s:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ua1;->b()Lcom/shabakaty/downloader/ua1;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/pp1$c;->s:Lcom/shabakaty/downloader/ua1;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/pp1$c;->t:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$c;->s:Lcom/shabakaty/downloader/ua1;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p1, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/c94;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    iget-object v2, p1, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/c94;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ua1;->j(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/c94;->e()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ua1;->j(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_2
    return-void
.end method
