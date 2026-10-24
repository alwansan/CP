.class public final Lcom/shabakaty/downloader/j82$b;
.super Ljava/lang/Object;
.source "typeEnhancement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/j82;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/b74;

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b74;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/j82$b;->a:Lcom/shabakaty/downloader/b74;

    iput p2, p0, Lcom/shabakaty/downloader/j82$b;->b:I

    iput-boolean p3, p0, Lcom/shabakaty/downloader/j82$b;->c:Z

    return-void
.end method
