.class public Lcom/google/common/collect/p$c;
.super Ljava/lang/Object;
.source "ImmutableList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final r:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/p$c;->r:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p$c;->r:[Ljava/lang/Object;

    sget-object v1, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 2
    array-length v1, v0

    if-nez v1, :cond_0

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/p;->u([Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v0

    :goto_0
    return-object v0
.end method
