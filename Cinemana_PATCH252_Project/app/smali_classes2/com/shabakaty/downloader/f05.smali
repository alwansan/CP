.class public final Lcom/shabakaty/downloader/f05;
.super Ljava/lang/Object;
.source "VersionRequirement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/f05$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/f05$a;

.field public static final c:Lcom/shabakaty/downloader/f05;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/dj3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/f05$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/f05$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/f05;->b:Lcom/shabakaty/downloader/f05$a;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/f05;

    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/f05;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/shabakaty/downloader/f05;->c:Lcom/shabakaty/downloader/f05;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/dj3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f05;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f05;->a:Ljava/util/List;

    return-void
.end method
