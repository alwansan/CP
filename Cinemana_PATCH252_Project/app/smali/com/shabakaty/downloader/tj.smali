.class public final Lcom/shabakaty/downloader/tj;
.super Ljava/lang/Object;
.source "BaseModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/tj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/tj$a;

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/tj;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/tj$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    return-void
.end method
