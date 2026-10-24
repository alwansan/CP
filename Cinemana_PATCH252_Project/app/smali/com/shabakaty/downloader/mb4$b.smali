.class public final Lcom/shabakaty/downloader/mb4$b;
.super Lcom/shabakaty/downloader/af2;
.source "StaffInfoViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mb4;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/mb4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mb4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/mb4$b;->r:Lcom/shabakaty/downloader/mb4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mb4$b;->r:Lcom/shabakaty/downloader/mb4;

    .line 4
    iget-object v6, v0, Lcom/shabakaty/downloader/mb4;->i:Lcom/shabakaty/downloader/mj;

    const/4 v2, 0x0

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/tj;

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/tj$a;->s:Lcom/shabakaty/downloader/tj$a;

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v7

    move-object v3, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/mj;->c(Lcom/shabakaty/downloader/tj;)V

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
