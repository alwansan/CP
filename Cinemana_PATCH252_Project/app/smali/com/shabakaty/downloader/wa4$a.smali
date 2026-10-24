.class public Lcom/shabakaty/downloader/wa4$a;
.super Ljava/lang/Object;
.source "SsManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wa4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:[B

.field public final c:[Lcom/shabakaty/downloader/xo4;


# direct methods
.method public constructor <init>(Ljava/util/UUID;[B[Lcom/shabakaty/downloader/xo4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wa4$a;->a:Ljava/util/UUID;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/wa4$a;->b:[B

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/wa4$a;->c:[Lcom/shabakaty/downloader/xo4;

    return-void
.end method
