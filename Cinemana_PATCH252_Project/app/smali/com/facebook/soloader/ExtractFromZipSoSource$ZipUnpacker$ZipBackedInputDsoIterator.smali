.class public final Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;
.super Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
.source "ExtractFromZipSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ZipBackedInputDsoIterator"
.end annotation


# instance fields
.field public r:I

.field public final synthetic s:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;Lcom/facebook/soloader/ExtractFromZipSoSource$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->s:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    invoke-direct {p0}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->s:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    invoke-virtual {v0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->c()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 2
    iget v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->r:I

    iget-object v1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->s:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    .line 3
    iget-object v1, v1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->r:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 4
    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->s:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    invoke-virtual {v0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->c()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 2
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->s:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    .line 3
    iget-object v1, v0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->r:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 4
    iget v2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->r:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->r:I

    aget-object v1, v1, v2

    .line 5
    iget-object v0, v0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->s:Ljava/util/zip/ZipFile;

    .line 6
    iget-object v2, v1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->t:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 7
    :try_start_0
    new-instance v2, Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    invoke-direct {v2, v1, v0}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;-><init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 9
    :cond_0
    throw v1
.end method
