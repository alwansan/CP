.class public final Lcom/shabakaty/downloader/mh1$d;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Lcom/shabakaty/downloader/mh1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/mh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/gh1;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gh1;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mh1$d;->a:Lcom/shabakaty/downloader/gh1;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/mh1$d;->c:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/mh1$d;->b:I

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/mh1$d;->d:Ljava/lang/String;

    return-void
.end method
