.class public final Lcom/shabakaty/downloader/ms2$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ms2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/shabakaty/downloader/ms2$c;

.field public e:Lcom/shabakaty/downloader/ms2$d;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Lcom/shabakaty/downloader/ms2$b;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/shabakaty/downloader/ms2$a;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/downloader/ms2$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/ms2$a;->c:Ljava/lang/String;

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/ms2$c;->s:Lcom/shabakaty/downloader/ms2$c;

    iput-object v1, p0, Lcom/shabakaty/downloader/ms2$a;->d:Lcom/shabakaty/downloader/ms2$c;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ms2$d;->s:Lcom/shabakaty/downloader/ms2$d;

    iput-object v1, p0, Lcom/shabakaty/downloader/ms2$a;->e:Lcom/shabakaty/downloader/ms2$d;

    iput-object v0, p0, Lcom/shabakaty/downloader/ms2$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/ms2$a;->g:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/shabakaty/downloader/ms2$a;->h:I

    iput-object v0, p0, Lcom/shabakaty/downloader/ms2$a;->i:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/ms2$b;->s:Lcom/shabakaty/downloader/ms2$b;

    iput-object v1, p0, Lcom/shabakaty/downloader/ms2$a;->j:Lcom/shabakaty/downloader/ms2$b;

    iput-object v0, p0, Lcom/shabakaty/downloader/ms2$a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/ms2$a;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/ms2;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    new-instance v20, Lcom/shabakaty/downloader/ms2;

    move-object/from16 v1, v20

    iget-wide v2, v0, Lcom/shabakaty/downloader/ms2$a;->a:J

    iget-object v4, v0, Lcom/shabakaty/downloader/ms2$a;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/shabakaty/downloader/ms2$a;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/shabakaty/downloader/ms2$a;->d:Lcom/shabakaty/downloader/ms2$c;

    iget-object v7, v0, Lcom/shabakaty/downloader/ms2$a;->e:Lcom/shabakaty/downloader/ms2$d;

    iget-object v8, v0, Lcom/shabakaty/downloader/ms2$a;->f:Ljava/lang/String;

    iget-object v9, v0, Lcom/shabakaty/downloader/ms2$a;->g:Ljava/lang/String;

    iget v11, v0, Lcom/shabakaty/downloader/ms2$a;->h:I

    iget-object v12, v0, Lcom/shabakaty/downloader/ms2$a;->i:Ljava/lang/String;

    iget-object v15, v0, Lcom/shabakaty/downloader/ms2$a;->j:Lcom/shabakaty/downloader/ms2$b;

    iget-object v10, v0, Lcom/shabakaty/downloader/ms2$a;->k:Ljava/lang/String;

    move-object/from16 v16, v10

    iget-object v10, v0, Lcom/shabakaty/downloader/ms2$a;->l:Ljava/lang/String;

    move-object/from16 v19, v10

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v17, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/shabakaty/downloader/ms2;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ms2$c;Lcom/shabakaty/downloader/ms2$d;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLcom/shabakaty/downloader/ms2$b;Ljava/lang/String;JLjava/lang/String;)V

    return-object v20
.end method
