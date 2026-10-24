.class public final Lcom/shabakaty/downloader/mb4$a;
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
        "Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/mb4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mb4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/mb4$a;->r:Lcom/shabakaty/downloader/mb4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v2, p1

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/mb4$a;->r:Lcom/shabakaty/downloader/mb4;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/mb4;->i:Lcom/shabakaty/downloader/mj;

    .line 4
    new-instance v6, Lcom/shabakaty/downloader/tj;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, v6

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/mj;->c(Lcom/shabakaty/downloader/tj;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/mb4$a;->r:Lcom/shabakaty/downloader/mb4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ib4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ib4;->f0()V

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
