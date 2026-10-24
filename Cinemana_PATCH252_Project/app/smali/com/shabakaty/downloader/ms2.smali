.class public final Lcom/shabakaty/downloader/ms2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ms2$b;,
        Lcom/shabakaty/downloader/ms2$d;,
        Lcom/shabakaty/downloader/ms2$c;,
        Lcom/shabakaty/downloader/ms2$a;
    }
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/shabakaty/downloader/ms2$c;

.field public final e:Lcom/shabakaty/downloader/ms2$d;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:Lcom/shabakaty/downloader/ms2$b;

.field public final m:Ljava/lang/String;

.field public final n:J

.field public final o:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ms2$a;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/ms2$a;-><init>()V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ms2$a;->a()Lcom/shabakaty/downloader/ms2;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ms2$c;Lcom/shabakaty/downloader/ms2$d;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLcom/shabakaty/downloader/ms2$b;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/shabakaty/downloader/ms2;->a:J

    move-object v1, p3

    iput-object v1, v0, Lcom/shabakaty/downloader/ms2;->b:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/shabakaty/downloader/ms2;->c:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/shabakaty/downloader/ms2;->d:Lcom/shabakaty/downloader/ms2$c;

    move-object v1, p6

    iput-object v1, v0, Lcom/shabakaty/downloader/ms2;->e:Lcom/shabakaty/downloader/ms2$d;

    move-object v1, p7

    iput-object v1, v0, Lcom/shabakaty/downloader/ms2;->f:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/shabakaty/downloader/ms2;->g:Ljava/lang/String;

    move v1, p9

    iput v1, v0, Lcom/shabakaty/downloader/ms2;->h:I

    move v1, p10

    iput v1, v0, Lcom/shabakaty/downloader/ms2;->i:I

    move-object v1, p11

    iput-object v1, v0, Lcom/shabakaty/downloader/ms2;->j:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lcom/shabakaty/downloader/ms2;->k:J

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/shabakaty/downloader/ms2;->l:Lcom/shabakaty/downloader/ms2$b;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/shabakaty/downloader/ms2;->m:Ljava/lang/String;

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/shabakaty/downloader/ms2;->n:J

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/shabakaty/downloader/ms2;->o:Ljava/lang/String;

    return-void
.end method
