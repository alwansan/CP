.class public Lcom/shabakaty/downloader/n1$b;
.super Ljava/lang/Object;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/n1;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/xz4;ZILcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/ph4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/b74;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/hw2;

.field public final synthetic s:Lcom/shabakaty/downloader/n1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n1;Lcom/shabakaty/downloader/hw2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/n1$b;->s:Lcom/shabakaty/downloader/n1;

    iput-object p2, p0, Lcom/shabakaty/downloader/n1$b;->r:Lcom/shabakaty/downloader/hw2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    iget-object v1, p0, Lcom/shabakaty/downloader/n1$b;->s:Lcom/shabakaty/downloader/n1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/n1;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/pg2;

    new-instance v4, Lcom/shabakaty/downloader/o1;

    invoke-direct {v4, p0}, Lcom/shabakaty/downloader/o1;-><init>(Lcom/shabakaty/downloader/n1$b;)V

    const-string v5, "getScope"

    .line 2
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v5, Lcom/shabakaty/downloader/yj2;->e:Lcom/shabakaty/downloader/md4;

    const-string v6, "NO_LOCKS"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {v3, v5, v4}, Lcom/shabakaty/downloader/pg2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    const/4 v4, 0x0

    .line 5
    invoke-static {v0, v1, v2, v4, v3}, Lcom/shabakaty/downloader/se2;->h(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0
.end method
