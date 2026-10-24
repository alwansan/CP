.class public final Lcom/shabakaty/downloader/uf2$d;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/uf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/q20;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/ve2;",
        "Lcom/shabakaty/downloader/wf2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/uf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/uf2$d;->r:Lcom/shabakaty/downloader/uf2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ve2;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/wf2;

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/uf2$d;->r:Lcom/shabakaty/downloader/uf2;

    .line 5
    iget-object v2, v3, Lcom/shabakaty/downloader/uf2;->B:Lcom/shabakaty/downloader/bg2;

    .line 6
    iget-object v4, v3, Lcom/shabakaty/downloader/uf2;->z:Lcom/shabakaty/downloader/q62;

    .line 7
    iget-object v0, v3, Lcom/shabakaty/downloader/uf2;->A:Lcom/shabakaty/downloader/q20;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 8
    :goto_0
    iget-object v6, v3, Lcom/shabakaty/downloader/uf2;->I:Lcom/shabakaty/downloader/wf2;

    move-object v1, p1

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/wf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/q62;ZLcom/shabakaty/downloader/wf2;)V

    return-object p1
.end method
