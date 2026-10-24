.class public abstract Lcom/shabakaty/downloader/q14$a;
.super Lcom/shabakaty/downloader/q14;
.source "StatusInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/q14$a$a;,
        Lcom/shabakaty/downloader/q14$a$b;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/shabakaty/downloader/nn0;)V
    .locals 0

    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/shabakaty/downloader/q14;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/q14$a;->b:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/q14$a;->c:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/q14$a;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q14$a;->b:Ljava/lang/String;

    return-object v0
.end method
