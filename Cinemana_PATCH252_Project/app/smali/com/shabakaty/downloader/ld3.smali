.class public final synthetic Lcom/shabakaty/downloader/ld3;
.super Lcom/shabakaty/downloader/co1;
.source "PlayerBottomSheetController.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/co1;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/on$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/shabakaty/downloader/ed3;

    const/4 v1, 0x0

    const-string v4, "showSeekPeriodBottomList"

    const-string v5, "showSeekPeriodBottomList()Lcom/shabakaty/cinemana/utils/bottom_sheet_list/BottomSheetList$Builder;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ed3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ed3;->e(Ljava/util/ArrayList;I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ed3;->e(Ljava/util/ArrayList;I)V

    const/4 v2, 0x5

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ed3;->e(Ljava/util/ArrayList;I)V

    const/16 v2, 0xa

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ed3;->e(Ljava/util/ArrayList;I)V

    const/16 v2, 0xf

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ed3;->e(Ljava/util/ArrayList;I)V

    const/16 v2, 0x14

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ed3;->e(Ljava/util/ArrayList;I)V

    const/16 v2, 0x19

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ed3;->e(Ljava/util/ArrayList;I)V

    const/16 v2, 0x1e

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ed3;->e(Ljava/util/ArrayList;I)V

    const/16 v2, 0x2d

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ed3;->e(Ljava/util/ArrayList;I)V

    const/16 v2, 0x3c

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ed3;->e(Ljava/util/ArrayList;I)V

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/on$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/on$a;-><init>()V

    .line 13
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/on$a;->a(Ljava/util/List;)Lcom/shabakaty/downloader/on$a;

    return-object v0
.end method
