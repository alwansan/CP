.class public abstract Lcom/shabakaty/downloader/q14$b$b;
.super Lcom/shabakaty/downloader/q14$b;
.source "StatusInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q14$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/q14$b$b$b;,
        Lcom/shabakaty/downloader/q14$b$b$a;
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7f1202a3

    :cond_0
    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/q14$b;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/q14$b$b;->c:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/q14$b$b;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q14$b$b;->c:Ljava/lang/String;

    return-object v0
.end method
