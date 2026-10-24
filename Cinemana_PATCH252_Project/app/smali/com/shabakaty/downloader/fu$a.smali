.class public final Lcom/shabakaty/downloader/fu$a;
.super Ljava/lang/Object;
.source "CameraSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/shabakaty/downloader/rt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/fu$a;->a:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/fu;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fu;

    iget-object v1, p0, Lcom/shabakaty/downloader/fu$a;->a:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fu;-><init>(Ljava/util/LinkedHashSet;)V

    return-object v0
.end method

.method public b(I)Lcom/shabakaty/downloader/fu$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fu$a;->a:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/shabakaty/downloader/bh2;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/bh2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
