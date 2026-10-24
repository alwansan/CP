.class public abstract Lcom/shabakaty/downloader/qp1$c;
.super Lcom/shabakaty/downloader/qp1;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/shabakaty/downloader/gs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/qp1$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/qp1<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public extensions:Lcom/shabakaty/downloader/ta1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ta1<",
            "Lcom/shabakaty/downloader/qp1$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qp1;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ta1;->d:Lcom/shabakaty/downloader/ta1;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/qp1$c;->extensions:Lcom/shabakaty/downloader/ta1;

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lcom/shabakaty/downloader/ds2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qp1;->v()Lcom/shabakaty/downloader/qp1;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/ds2$a;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qp1$e;->v:Lcom/shabakaty/downloader/qp1$e;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/qp1;->t(Lcom/shabakaty/downloader/qp1$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/qp1$a;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/qp1$a;->s(Lcom/shabakaty/downloader/qp1;Lcom/shabakaty/downloader/qp1;)V

    return-object v0
.end method
