.class public final Lcom/shabakaty/downloader/zz3;
.super Ljava/lang/Object;
.source "SefReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zz3$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/shabakaty/downloader/sa4;

.field public static final e:Lcom/shabakaty/downloader/sa4;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/zz3$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cz$b;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/cz$b;-><init>(C)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/sa4;

    new-instance v2, Lcom/shabakaty/downloader/ra4;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/ra4;-><init>(Lcom/shabakaty/downloader/cz;)V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/sa4;-><init>(Lcom/shabakaty/downloader/sa4$b;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/zz3;->d:Lcom/shabakaty/downloader/sa4;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/cz$b;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/cz$b;-><init>(C)V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/sa4;

    new-instance v2, Lcom/shabakaty/downloader/ra4;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/ra4;-><init>(Lcom/shabakaty/downloader/cz;)V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/sa4;-><init>(Lcom/shabakaty/downloader/sa4$b;)V

    .line 6
    sput-object v1, Lcom/shabakaty/downloader/zz3;->e:Lcom/shabakaty/downloader/sa4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/zz3;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/zz3;->b:I

    return-void
.end method
