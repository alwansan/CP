.class public final Lcom/shabakaty/downloader/cr2$c;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lcom/shabakaty/downloader/ar2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cr2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/zm2;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/uq2$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uq2;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/zm2;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/zm2;-><init>(Lcom/shabakaty/downloader/uq2;Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/cr2$c;->a:Lcom/shabakaty/downloader/zm2;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cr2$c;->c:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cr2$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr2$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/nn4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr2$c;->a:Lcom/shabakaty/downloader/zm2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    return-object v0
.end method
