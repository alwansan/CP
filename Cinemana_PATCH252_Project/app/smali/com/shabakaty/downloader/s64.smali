.class public Lcom/shabakaty/downloader/s64;
.super Lcom/shabakaty/downloader/ak;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/shabakaty/downloader/j71;
.implements Lcom/shabakaty/downloader/j71$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/s64$d;,
        Lcom/shabakaty/downloader/s64$c;,
        Lcom/shabakaty/downloader/s64$b;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Lcom/shabakaty/downloader/ie;

.field public D:F

.field public E:Z

.field public F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vg0;",
            ">;"
        }
    .end annotation
.end field

.field public G:Z

.field public H:Z

.field public I:Lcom/shabakaty/downloader/os0;

.field public J:Lcom/shabakaty/downloader/p25;

.field public final b:[Lcom/shabakaty/downloader/lr3;

.field public final c:Lcom/shabakaty/downloader/b00;

.field public final d:Lcom/shabakaty/downloader/q71;

.field public final e:Lcom/shabakaty/downloader/s64$c;

.field public final f:Lcom/shabakaty/downloader/s64$d;

.field public final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/shabakaty/downloader/f25;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/shabakaty/downloader/oe;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/shabakaty/downloader/am4;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/shabakaty/downloader/zs2;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/shabakaty/downloader/ps0;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/shabakaty/downloader/k6;

.field public final m:Lcom/shabakaty/downloader/ne;

.field public final n:Lcom/shabakaty/downloader/xd4;

.field public final o:Lcom/shabakaty/downloader/h55;

.field public final p:Lcom/shabakaty/downloader/r65;

.field public final q:J

.field public r:Landroid/media/AudioTrack;

.field public s:Ljava/lang/Object;

.field public t:Landroid/view/Surface;

.field public u:Landroid/view/SurfaceHolder;

.field public v:Lcom/shabakaty/downloader/ea4;

.field public w:Z

.field public x:Landroid/view/TextureView;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/s64$b;)V
    .locals 32

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/shabakaty/downloader/ak;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/b00;

    const/4 v14, 0x1

    invoke-direct {v1, v14}, Lcom/shabakaty/downloader/b00;-><init>(I)V

    iput-object v1, v15, Lcom/shabakaty/downloader/s64;->c:Lcom/shabakaty/downloader/b00;

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/shabakaty/downloader/s64$b;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/s64$b;->h:Lcom/shabakaty/downloader/k6;

    .line 6
    iput-object v2, v15, Lcom/shabakaty/downloader/s64;->l:Lcom/shabakaty/downloader/k6;

    .line 7
    iget-object v2, v0, Lcom/shabakaty/downloader/s64$b;->j:Lcom/shabakaty/downloader/ie;

    .line 8
    iput-object v2, v15, Lcom/shabakaty/downloader/s64;->C:Lcom/shabakaty/downloader/ie;

    .line 9
    iget v2, v0, Lcom/shabakaty/downloader/s64$b;->l:I

    .line 10
    iput v2, v15, Lcom/shabakaty/downloader/s64;->y:I

    const/4 v12, 0x0

    .line 11
    iput-boolean v12, v15, Lcom/shabakaty/downloader/s64;->E:Z

    .line 12
    iget-wide v2, v0, Lcom/shabakaty/downloader/s64$b;->s:J

    .line 13
    iput-wide v2, v15, Lcom/shabakaty/downloader/s64;->q:J

    .line 14
    new-instance v9, Lcom/shabakaty/downloader/s64$c;

    const/4 v13, 0x0

    invoke-direct {v9, v15, v13}, Lcom/shabakaty/downloader/s64$c;-><init>(Lcom/shabakaty/downloader/s64;Lcom/shabakaty/downloader/s64$a;)V

    iput-object v9, v15, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/s64$d;

    invoke-direct {v2, v13}, Lcom/shabakaty/downloader/s64$d;-><init>(Lcom/shabakaty/downloader/s64$a;)V

    iput-object v2, v15, Lcom/shabakaty/downloader/s64;->f:Lcom/shabakaty/downloader/s64$d;

    .line 16
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/shabakaty/downloader/s64;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/shabakaty/downloader/s64;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 18
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/shabakaty/downloader/s64;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 19
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/shabakaty/downloader/s64;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/shabakaty/downloader/s64;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    new-instance v10, Landroid/os/Handler;

    .line 22
    iget-object v2, v0, Lcom/shabakaty/downloader/s64$b;->i:Landroid/os/Looper;

    .line 23
    invoke-direct {v10, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    iget-object v4, v0, Lcom/shabakaty/downloader/s64$b;->b:Lcom/shabakaty/downloader/or3;

    move-object v5, v10

    move-object v6, v9

    move-object v7, v9

    move-object v8, v9

    .line 25
    invoke-interface/range {v4 .. v9}, Lcom/shabakaty/downloader/or3;->a(Landroid/os/Handler;Lcom/shabakaty/downloader/o25;Lcom/shabakaty/downloader/ye;Lcom/shabakaty/downloader/am4;Lcom/shabakaty/downloader/zs2;)[Lcom/shabakaty/downloader/lr3;

    move-result-object v2

    iput-object v2, v15, Lcom/shabakaty/downloader/s64;->b:[Lcom/shabakaty/downloader/lr3;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    iput v2, v15, Lcom/shabakaty/downloader/s64;->D:F

    .line 27
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    .line 28
    iget-object v1, v15, Lcom/shabakaty/downloader/s64;->r:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, v15, Lcom/shabakaty/downloader/s64;->r:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 31
    iput-object v13, v15, Lcom/shabakaty/downloader/s64;->r:Landroid/media/AudioTrack;

    .line 32
    :cond_0
    iget-object v1, v15, Lcom/shabakaty/downloader/s64;->r:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    const/16 v18, 0xfa0

    const/16 v19, 0x4

    const/16 v20, 0x2

    const/16 v21, 0x2

    .line 33
    new-instance v1, Landroid/media/AudioTrack;

    const/16 v17, 0x3

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v23}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v1, v15, Lcom/shabakaty/downloader/s64;->r:Landroid/media/AudioTrack;

    .line 34
    :cond_1
    iget-object v1, v15, Lcom/shabakaty/downloader/s64;->r:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    .line 35
    iput v1, v15, Lcom/shabakaty/downloader/s64;->B:I

    goto :goto_1

    .line 36
    :cond_2
    sget-object v2, Lcom/shabakaty/downloader/jp;->a:Ljava/util/UUID;

    const-string v2, "audio"

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v1, :cond_3

    const/4 v1, -0x1

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {v1}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v1

    .line 39
    :goto_0
    iput v1, v15, Lcom/shabakaty/downloader/s64;->B:I

    .line 40
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v15, Lcom/shabakaty/downloader/s64;->F:Ljava/util/List;

    .line 41
    iput-boolean v14, v15, Lcom/shabakaty/downloader/s64;->G:Z

    .line 42
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v2, 0x8

    new-array v4, v2, [I

    const/16 v5, 0x14

    aput v5, v4, v12

    aput v3, v4, v14

    const/16 v3, 0x16

    const/4 v11, 0x2

    aput v3, v4, v11

    const/16 v3, 0x17

    const/4 v9, 0x3

    aput v3, v4, v9

    const/16 v3, 0x18

    const/4 v8, 0x4

    aput v3, v4, v8

    const/4 v3, 0x5

    const/16 v5, 0x19

    aput v5, v4, v3

    const/16 v3, 0x1a

    const/4 v7, 0x6

    aput v3, v4, v7

    const/16 v3, 0x1b

    const/4 v6, 0x7

    aput v3, v4, v6

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    .line 43
    aget v5, v4, v3

    const/16 v16, 0x0

    xor-int/lit8 v16, v16, 0x1

    .line 44
    invoke-static/range {v16 .. v16}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 45
    invoke-virtual {v1, v5, v14}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 46
    :cond_4
    new-instance v5, Lcom/shabakaty/downloader/bd3$b;

    const/4 v2, 0x0

    xor-int/2addr v2, v14

    .line 47
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 48
    new-instance v2, Lcom/shabakaty/downloader/xd1;

    invoke-direct {v2, v1, v13}, Lcom/shabakaty/downloader/xd1;-><init>(Landroid/util/SparseBooleanArray;Lcom/shabakaty/downloader/xd1$a;)V

    .line 49
    invoke-direct {v5, v2, v13}, Lcom/shabakaty/downloader/bd3$b;-><init>(Lcom/shabakaty/downloader/xd1;Lcom/shabakaty/downloader/bd3$a;)V

    .line 50
    new-instance v4, Lcom/shabakaty/downloader/q71;

    iget-object v2, v15, Lcom/shabakaty/downloader/s64;->b:[Lcom/shabakaty/downloader/lr3;

    .line 51
    iget-object v3, v0, Lcom/shabakaty/downloader/s64$b;->d:Lcom/shabakaty/downloader/lp4;

    .line 52
    iget-object v1, v0, Lcom/shabakaty/downloader/s64$b;->e:Lcom/shabakaty/downloader/zq2;

    .line 53
    iget-object v6, v0, Lcom/shabakaty/downloader/s64$b;->f:Lcom/shabakaty/downloader/fj2;

    .line 54
    iget-object v7, v0, Lcom/shabakaty/downloader/s64$b;->g:Lcom/shabakaty/downloader/qi;

    .line 55
    iget-object v8, v15, Lcom/shabakaty/downloader/s64;->l:Lcom/shabakaty/downloader/k6;

    .line 56
    iget-boolean v9, v0, Lcom/shabakaty/downloader/s64$b;->m:Z

    .line 57
    iget-object v11, v0, Lcom/shabakaty/downloader/s64$b;->n:Lcom/shabakaty/downloader/wz3;

    .line 58
    iget-wide v12, v0, Lcom/shabakaty/downloader/s64$b;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 59
    :try_start_1
    iget-wide v14, v0, Lcom/shabakaty/downloader/s64$b;->p:J

    move-wide/from16 v24, v14

    .line 60
    iget-object v14, v0, Lcom/shabakaty/downloader/s64$b;->q:Lcom/shabakaty/downloader/ej2;

    move-object/from16 v26, v14

    .line 61
    iget-wide v14, v0, Lcom/shabakaty/downloader/s64$b;->r:J

    const/16 v27, 0x0

    move-wide/from16 v28, v14

    .line 62
    iget-object v15, v0, Lcom/shabakaty/downloader/s64$b;->c:Lcom/shabakaty/downloader/w30;

    .line 63
    iget-object v14, v0, Lcom/shabakaty/downloader/s64$b;->i:Landroid/os/Looper;

    move-object/from16 v30, v1

    move-object v1, v4

    move-object v0, v4

    move-object/from16 v4, v30

    move-object/from16 v30, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v11

    move-object/from16 v31, v10

    move-wide v10, v12

    const/16 v22, 0x0

    move-wide/from16 v12, v24

    move-object/from16 v19, v14

    move-wide/from16 v16, v28

    move-object/from16 v14, v26

    move-object/from16 v18, v15

    move-wide/from16 v15, v16

    move/from16 v17, v27

    move-object/from16 v20, p0

    move-object/from16 v21, v30

    .line 64
    invoke-direct/range {v1 .. v21}, Lcom/shabakaty/downloader/q71;-><init>([Lcom/shabakaty/downloader/lr3;Lcom/shabakaty/downloader/lp4;Lcom/shabakaty/downloader/zq2;Lcom/shabakaty/downloader/fj2;Lcom/shabakaty/downloader/qi;Lcom/shabakaty/downloader/k6;ZLcom/shabakaty/downloader/wz3;JJLcom/shabakaty/downloader/ej2;JZLcom/shabakaty/downloader/w30;Landroid/os/Looper;Lcom/shabakaty/downloader/bd3;Lcom/shabakaty/downloader/bd3$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 65
    iget-object v2, v1, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/q71;->i0(Lcom/shabakaty/downloader/bd3$c;)V

    .line 66
    iget-object v2, v1, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    .line 67
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/shabakaty/downloader/je;

    move-object/from16 v2, p1

    .line 69
    iget-object v3, v2, Lcom/shabakaty/downloader/s64$b;->a:Landroid/content/Context;

    .line 70
    iget-object v4, v1, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    move-object/from16 v5, v31

    invoke-direct {v0, v3, v5, v4}, Lcom/shabakaty/downloader/je;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/shabakaty/downloader/je$b;)V

    .line 71
    iget-boolean v3, v0, Lcom/shabakaty/downloader/je;->c:Z

    if-eqz v3, :cond_5

    .line 72
    iget-object v3, v0, Lcom/shabakaty/downloader/je;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/shabakaty/downloader/je;->b:Lcom/shabakaty/downloader/je$a;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v3, 0x0

    .line 73
    iput-boolean v3, v0, Lcom/shabakaty/downloader/je;->c:Z

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 74
    :goto_3
    new-instance v0, Lcom/shabakaty/downloader/ne;

    .line 75
    iget-object v4, v2, Lcom/shabakaty/downloader/s64$b;->a:Landroid/content/Context;

    .line 76
    iget-object v6, v1, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    invoke-direct {v0, v4, v5, v6}, Lcom/shabakaty/downloader/ne;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/shabakaty/downloader/ne$b;)V

    iput-object v0, v1, Lcom/shabakaty/downloader/s64;->m:Lcom/shabakaty/downloader/ne;

    .line 77
    iget-boolean v4, v2, Lcom/shabakaty/downloader/s64$b;->k:Z

    if-eqz v4, :cond_6

    .line 78
    iget-object v13, v1, Lcom/shabakaty/downloader/s64;->C:Lcom/shabakaty/downloader/ie;

    goto :goto_4

    :cond_6
    move-object/from16 v13, v22

    :goto_4
    invoke-virtual {v0, v13}, Lcom/shabakaty/downloader/ne;->c(Lcom/shabakaty/downloader/ie;)V

    .line 79
    new-instance v0, Lcom/shabakaty/downloader/xd4;

    .line 80
    iget-object v4, v2, Lcom/shabakaty/downloader/s64$b;->a:Landroid/content/Context;

    .line 81
    iget-object v6, v1, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    invoke-direct {v0, v4, v5, v6}, Lcom/shabakaty/downloader/xd4;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/shabakaty/downloader/xd4$b;)V

    iput-object v0, v1, Lcom/shabakaty/downloader/s64;->n:Lcom/shabakaty/downloader/xd4;

    .line 82
    iget-object v4, v1, Lcom/shabakaty/downloader/s64;->C:Lcom/shabakaty/downloader/ie;

    iget v4, v4, Lcom/shabakaty/downloader/ie;->c:I

    invoke-static {v4}, Lcom/shabakaty/downloader/sy4;->z(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/xd4;->c(I)V

    .line 83
    new-instance v4, Lcom/shabakaty/downloader/h55;

    .line 84
    iget-object v5, v2, Lcom/shabakaty/downloader/s64$b;->a:Landroid/content/Context;

    .line 85
    invoke-direct {v4, v5}, Lcom/shabakaty/downloader/h55;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/shabakaty/downloader/s64;->o:Lcom/shabakaty/downloader/h55;

    .line 86
    iput-boolean v3, v4, Lcom/shabakaty/downloader/h55;->c:Z

    .line 87
    invoke-virtual {v4}, Lcom/shabakaty/downloader/h55;->a()V

    .line 88
    new-instance v4, Lcom/shabakaty/downloader/r65;

    .line 89
    iget-object v2, v2, Lcom/shabakaty/downloader/s64$b;->a:Landroid/content/Context;

    .line 90
    invoke-direct {v4, v2}, Lcom/shabakaty/downloader/r65;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/shabakaty/downloader/s64;->p:Lcom/shabakaty/downloader/r65;

    .line 91
    iput-boolean v3, v4, Lcom/shabakaty/downloader/r65;->c:Z

    .line 92
    invoke-virtual {v4}, Lcom/shabakaty/downloader/r65;->a()V

    .line 93
    invoke-static {v0}, Lcom/shabakaty/downloader/s64;->k0(Lcom/shabakaty/downloader/xd4;)Lcom/shabakaty/downloader/os0;

    move-result-object v0

    iput-object v0, v1, Lcom/shabakaty/downloader/s64;->I:Lcom/shabakaty/downloader/os0;

    .line 94
    sget-object v0, Lcom/shabakaty/downloader/p25;->e:Lcom/shabakaty/downloader/p25;

    iput-object v0, v1, Lcom/shabakaty/downloader/s64;->J:Lcom/shabakaty/downloader/p25;

    .line 95
    iget v0, v1, Lcom/shabakaty/downloader/s64;->B:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x66

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Lcom/shabakaty/downloader/s64;->o0(IILjava/lang/Object;)V

    .line 96
    iget v0, v1, Lcom/shabakaty/downloader/s64;->B:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v0}, Lcom/shabakaty/downloader/s64;->o0(IILjava/lang/Object;)V

    .line 97
    iget-object v0, v1, Lcom/shabakaty/downloader/s64;->C:Lcom/shabakaty/downloader/ie;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2, v0}, Lcom/shabakaty/downloader/s64;->o0(IILjava/lang/Object;)V

    .line 98
    iget v0, v1, Lcom/shabakaty/downloader/s64;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2, v0}, Lcom/shabakaty/downloader/s64;->o0(IILjava/lang/Object;)V

    const/16 v0, 0x65

    .line 99
    iget-boolean v2, v1, Lcom/shabakaty/downloader/s64;->E:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Lcom/shabakaty/downloader/s64;->o0(IILjava/lang/Object;)V

    .line 100
    iget-object v0, v1, Lcom/shabakaty/downloader/s64;->f:Lcom/shabakaty/downloader/s64$d;

    const/4 v2, 0x6

    invoke-virtual {v1, v4, v2, v0}, Lcom/shabakaty/downloader/s64;->o0(IILjava/lang/Object;)V

    .line 101
    iget-object v0, v1, Lcom/shabakaty/downloader/s64;->f:Lcom/shabakaty/downloader/s64$d;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v0}, Lcom/shabakaty/downloader/s64;->o0(IILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    iget-object v0, v1, Lcom/shabakaty/downloader/s64;->c:Lcom/shabakaty/downloader/b00;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/b00;->b()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_5
    iget-object v2, v1, Lcom/shabakaty/downloader/s64;->c:Lcom/shabakaty/downloader/b00;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/b00;->b()Z

    .line 103
    throw v0
.end method

.method public static i0(Lcom/shabakaty/downloader/s64;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->h()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-boolean v0, v0, Lcom/shabakaty/downloader/yc3;->p:Z

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/s64;->o:Lcom/shabakaty/downloader/h55;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_0
    iput-boolean v1, v3, Lcom/shabakaty/downloader/h55;->d:Z

    .line 8
    invoke-virtual {v3}, Lcom/shabakaty/downloader/h55;->a()V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->p:Lcom/shabakaty/downloader/r65;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->f()Z

    move-result p0

    .line 10
    iput-boolean p0, v0, Lcom/shabakaty/downloader/r65;->d:Z

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/r65;->a()V

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->o:Lcom/shabakaty/downloader/h55;

    .line 13
    iput-boolean v2, v0, Lcom/shabakaty/downloader/h55;->d:Z

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/h55;->a()V

    .line 15
    iget-object p0, p0, Lcom/shabakaty/downloader/s64;->p:Lcom/shabakaty/downloader/r65;

    .line 16
    iput-boolean v2, p0, Lcom/shabakaty/downloader/r65;->d:Z

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r65;->a()V

    :goto_2
    return-void
.end method

.method public static k0(Lcom/shabakaty/downloader/xd4;)Lcom/shabakaty/downloader/os0;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/os0;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/xd4;->c:Landroid/media/AudioManager;

    iget v3, p0, Lcom/shabakaty/downloader/xd4;->d:I

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/xd4;->c:Landroid/media/AudioManager;

    iget p0, p0, Lcom/shabakaty/downloader/xd4;->d:I

    invoke-virtual {v3, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    .line 5
    invoke-direct {v0, v2, v1, p0}, Lcom/shabakaty/downloader/os0;-><init>(III)V

    return-object v0
.end method

.method public static l0(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-wide v0, v0, Lcom/shabakaty/downloader/q71;->r:J

    return-wide v0
.end method

.method public B(Lcom/shabakaty/downloader/bd3$e;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/q71;->i0(Lcom/shabakaty/downloader/bd3$c;)V

    return-void
.end method

.method public C()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vg0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->F:Ljava/util/List;

    return-object v0
.end method

.method public F()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->F()I

    move-result v0

    return v0
.end method

.method public H(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->u:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->j0()V

    :cond_1
    return-void
.end method

.method public I()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget v0, v0, Lcom/shabakaty/downloader/yc3;->m:I

    return v0
.end method

.method public J()Lcom/shabakaty/downloader/cp4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    return-object v0
.end method

.method public K()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->K()J

    move-result-wide v0

    return-wide v0
.end method

.method public L()Lcom/shabakaty/downloader/nn4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    return-object v0
.end method

.method public M()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->o:Landroid/os/Looper;

    return-object v0
.end method

.method public N()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-boolean v0, v0, Lcom/shabakaty/downloader/q71;->u:Z

    return v0
.end method

.method public O()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public R(Landroid/view/TextureView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->j0()V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->n0()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/s64;->x:Landroid/view/TextureView;

    .line 5
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "SimpleExoPlayer"

    const-string v1, "Replacing existing SurfaceTextureListener."

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/s64;->r0(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p1}, Lcom/shabakaty/downloader/s64;->m0(II)V

    goto :goto_1

    .line 11
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/s64;->r0(Ljava/lang/Object;)V

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/s64;->t:Landroid/view/Surface;

    .line 14
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/s64;->m0(II)V

    :goto_1
    return-void
.end method

.method public S()Lcom/shabakaty/downloader/ip4;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ip4;

    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v0, v0, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ip4;-><init>([Lcom/shabakaty/downloader/hp4;)V

    return-object v1
.end method

.method public U()Lcom/shabakaty/downloader/hp2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->B:Lcom/shabakaty/downloader/hp2;

    return-object v0
.end method

.method public V()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->V()J

    move-result-wide v0

    return-wide v0
.end method

.method public W()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-wide v0, v0, Lcom/shabakaty/downloader/q71;->q:J

    return-wide v0
.end method

.method public a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-wide v0, v0, Lcom/shabakaty/downloader/yc3;->r:J

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lcom/shabakaty/downloader/ad3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    return-object v0
.end method

.method public d(IJ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->l:Lcom/shabakaty/downloader/k6;

    .line 3
    iget-boolean v1, v0, Lcom/shabakaty/downloader/k6;->y:Z

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k6;->n0()Lcom/shabakaty/downloader/t6$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v0, Lcom/shabakaty/downloader/k6;->y:Z

    const/4 v2, -0x1

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/s5;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/shabakaty/downloader/s5;-><init>(Lcom/shabakaty/downloader/t6$a;I)V

    .line 7
    iget-object v4, v0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/si2;->a()V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/q71;->d(IJ)V

    return-void
.end method

.method public e()Lcom/shabakaty/downloader/bd3$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->A:Lcom/shabakaty/downloader/bd3$b;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-boolean v0, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    return v0
.end method

.method public g()V
    .locals 3

    const-string v2, "player_state_refresh_g_enter"
    invoke-static {v2}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->f()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/s64;->m:Lcom/shabakaty/downloader/ne;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/ne;->e(ZI)I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/s64;->l0(ZI)I

    move-result v2

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/s64;->u0(ZII)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->g()V

    const-string v2, "player_state_refresh_g_complete"
    invoke-static {v2}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget v0, v0, Lcom/shabakaty/downloader/yc3;->e:I

    return v0
.end method

.method public j(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/q71;->j(Z)V

    return-void
.end method

.method public j0()V
    .locals 1

    const-string v0, "surface_detach_enter"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->n0()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/s64;->r0(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0}, Lcom/shabakaty/downloader/s64;->m0(II)V

    const-string v0, "surface_detach_complete"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xbb8

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->l()I

    move-result v0

    return v0
.end method

.method public m(Landroid/view/TextureView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->x:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->j0()V

    :cond_0
    return-void
.end method

.method public final m0(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/s64;->z:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/shabakaty/downloader/s64;->A:I

    if-eq p2, v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/shabakaty/downloader/s64;->z:I

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/s64;->A:I

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->l:Lcom/shabakaty/downloader/k6;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/k6;->g0(II)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/f25;

    .line 6
    invoke-interface {v1, p1, p2}, Lcom/shabakaty/downloader/f25;->g0(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public n()Lcom/shabakaty/downloader/p25;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->J:Lcom/shabakaty/downloader/p25;

    return-object v0
.end method

.method public final n0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->v:Lcom/shabakaty/downloader/ea4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    iget-object v2, p0, Lcom/shabakaty/downloader/s64;->f:Lcom/shabakaty/downloader/s64$d;

    .line 3
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/q71;->j0(Lcom/shabakaty/downloader/vd3$b;)Lcom/shabakaty/downloader/vd3;

    move-result-object v0

    const/16 v2, 0x2710

    .line 4
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/vd3;->f(I)Lcom/shabakaty/downloader/vd3;

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vd3;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/vd3;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vd3;->d()Lcom/shabakaty/downloader/vd3;

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->v:Lcom/shabakaty/downloader/ea4;

    iget-object v2, p0, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/ea4;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/s64;->v:Lcom/shabakaty/downloader/ea4;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->x:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    if-eq v0, v2, :cond_1

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->x:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 14
    :goto_0
    iput-object v1, p0, Lcom/shabakaty/downloader/s64;->x:Landroid/view/TextureView;

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->u:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 17
    iput-object v1, p0, Lcom/shabakaty/downloader/s64;->u:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method public o(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/dp2;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "media_item_refresh_request"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->h()I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v0, "refresh_playback_state"
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->a()Z
    move-result v0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    const-string v0, "refresh_is_loading"
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I
    move-result v0
    move v2, v0
    const/4 v3, 0x0
    :diag_refresh_item_loop
    if-ge v3, v2, :diag_refresh_item_loop_done
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/shabakaty/downloader/dp2;
    iget-object v5, v4, Lcom/shabakaty/downloader/dp2;->a:Ljava/lang/String;
    const-string v6, "media_refresh_item_id"
    invoke-static {v6, v5}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V
    iget-object v5, v4, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;
    if-eqz v5, :diag_refresh_item_next
    iget-object v6, v5, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;
    const-string v7, "media_refresh_item_uri"
    invoke-static {v7, v6}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V
    :diag_refresh_item_next
    add-int/lit8 v3, v3, 0x1
    goto :diag_refresh_item_loop
    :diag_refresh_item_loop_done
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v0, "refresh_item_count"
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->C()J
    move-result-wide v0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    const-string v0, "refresh_position_us"
    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->f()Z
    move-result v0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    const-string v0, "refresh_play_when_ready"
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/q71;->o(Ljava/util/List;Z)V

    const-string v0, "media_item_refresh_request_dispatched"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    return-void
.end method

.method public final o0(IILjava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->b:[Lcom/shabakaty/downloader/lr3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lcom/shabakaty/downloader/lr3;->x()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 3
    iget-object v4, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/q71;->j0(Lcom/shabakaty/downloader/vd3$b;)Lcom/shabakaty/downloader/vd3;

    move-result-object v3

    .line 4
    iget-boolean v4, v3, Lcom/shabakaty/downloader/vd3;->i:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 5
    iput p2, v3, Lcom/shabakaty/downloader/vd3;->e:I

    .line 6
    iget-boolean v4, v3, Lcom/shabakaty/downloader/vd3;->i:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 7
    iput-object p3, v3, Lcom/shabakaty/downloader/vd3;->f:Ljava/lang/Object;

    .line 8
    invoke-virtual {v3}, Lcom/shabakaty/downloader/vd3;->d()Lcom/shabakaty/downloader/vd3;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->p()I

    move-result v0

    return v0
.end method

.method public final p0(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "surface_attach_enter"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s64;->w:Z

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s64;->u:Landroid/view/SurfaceHolder;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/s64;->u:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/s64;->u:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/s64;->m0(II)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/shabakaty/downloader/s64;->m0(II)V

    :goto_0
    const-string v0, "surface_attach_complete"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    return-void
.end method

.method public q0(Lcom/shabakaty/downloader/ad3;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/ad3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/yc3;->f(Lcom/shabakaty/downloader/ad3;)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    .line 5
    iget v2, v0, Lcom/shabakaty/downloader/q71;->v:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/shabakaty/downloader/q71;->v:I

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast v2, Lcom/shabakaty/downloader/yj4;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1}, Lcom/shabakaty/downloader/yj4;->c(ILjava/lang/Object;)Lcom/shabakaty/downloader/fs1$a;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/yj4$b;->b()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    .line 8
    invoke-virtual/range {v0 .. v9}, Lcom/shabakaty/downloader/q71;->x0(Lcom/shabakaty/downloader/yc3;IIZZIJI)V

    :goto_0
    return-void
.end method

.method public r(Landroid/view/SurfaceView;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/m05;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->n0()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s64;->r0(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s64;->p0(Landroid/view/SurfaceHolder;)V

    goto/16 :goto_1

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/ea4;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->n0()V

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ea4;

    iput-object v0, p0, Lcom/shabakaty/downloader/s64;->v:Lcom/shabakaty/downloader/ea4;

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    iget-object v1, p0, Lcom/shabakaty/downloader/s64;->f:Lcom/shabakaty/downloader/s64$d;

    .line 10
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/q71;->j0(Lcom/shabakaty/downloader/vd3$b;)Lcom/shabakaty/downloader/vd3;

    move-result-object v0

    const/16 v1, 0x2710

    .line 11
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vd3;->f(I)Lcom/shabakaty/downloader/vd3;

    iget-object v1, p0, Lcom/shabakaty/downloader/s64;->v:Lcom/shabakaty/downloader/ea4;

    .line 12
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vd3;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/vd3;

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vd3;->d()Lcom/shabakaty/downloader/vd3;

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->v:Lcom/shabakaty/downloader/ea4;

    iget-object v1, p0, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/ea4;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->v:Lcom/shabakaty/downloader/ea4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ea4;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/s64;->r0(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s64;->p0(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    if-nez p1, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->j0()V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->n0()V

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/shabakaty/downloader/s64;->w:Z

    .line 23
    iput-object p1, p0, Lcom/shabakaty/downloader/s64;->u:Landroid/view/SurfaceHolder;

    .line 24
    iget-object v1, p0, Lcom/shabakaty/downloader/s64;->e:Lcom/shabakaty/downloader/s64$c;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 25
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 27
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/s64;->r0(Ljava/lang/Object;)V

    .line 28
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/s64;->m0(II)V

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/s64;->r0(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1, p1}, Lcom/shabakaty/downloader/s64;->m0(II)V

    :goto_1
    return-void
.end method

.method public final r0(Ljava/lang/Object;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/s64;->b:[Lcom/shabakaty/downloader/lr3;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 3
    invoke-interface {v6}, Lcom/shabakaty/downloader/lr3;->x()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 4
    iget-object v7, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 5
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/q71;->j0(Lcom/shabakaty/downloader/vd3$b;)Lcom/shabakaty/downloader/vd3;

    move-result-object v6

    .line 6
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/vd3;->f(I)Lcom/shabakaty/downloader/vd3;

    .line 7
    iget-boolean v7, v6, Lcom/shabakaty/downloader/vd3;->i:Z

    xor-int/2addr v5, v7

    invoke-static {v5}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 8
    iput-object p1, v6, Lcom/shabakaty/downloader/vd3;->f:Ljava/lang/Object;

    .line 9
    invoke-virtual {v6}, Lcom/shabakaty/downloader/vd3;->d()Lcom/shabakaty/downloader/vd3;

    .line 10
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/s64;->s:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 12
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vd3;

    .line 13
    iget-wide v6, p0, Lcom/shabakaty/downloader/s64;->q:J

    invoke-virtual {v1, v6, v7}, Lcom/shabakaty/downloader/vd3;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    .line 14
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 v5, 0x0

    .line 15
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->s:Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/s64;->t:Landroid/view/Surface;

    if-ne v0, v1, :cond_4

    .line 16
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/shabakaty/downloader/s64;->t:Landroid/view/Surface;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 18
    :cond_4
    :goto_3
    iput-object p1, p0, Lcom/shabakaty/downloader/s64;->s:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 19
    iget-object p1, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    new-instance v0, Lcom/shabakaty/downloader/d81;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/d81;-><init>(I)V

    const/16 v1, 0x3eb

    .line 20
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/i71;->b(Ljava/lang/RuntimeException;I)Lcom/shabakaty/downloader/i71;

    move-result-object v0

    .line 21
    invoke-virtual {p1, v3, v0}, Lcom/shabakaty/downloader/q71;->v0(ZLcom/shabakaty/downloader/i71;)V

    :cond_5
    return-void
.end method

.method public s(Lcom/shabakaty/downloader/bd3$e;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/q71;->r0(Lcom/shabakaty/downloader/bd3$c;)V

    return-void
.end method

.method public s0(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/sy4;->h(FFF)F

    move-result p1

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/s64;->D:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/shabakaty/downloader/s64;->D:F

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->m:Lcom/shabakaty/downloader/ne;

    .line 6
    iget v0, v0, Lcom/shabakaty/downloader/ne;->g:F

    mul-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/shabakaty/downloader/s64;->o0(IILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->l:Lcom/shabakaty/downloader/k6;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k6;->r(F)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/oe;

    .line 10
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/oe;->r(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public t()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->t()I

    move-result v0

    return v0
.end method

.method public t0(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->m:Lcom/shabakaty/downloader/ne;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->f()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ne;->e(ZI)I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/q71;->v0(ZLcom/shabakaty/downloader/i71;)V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/s64;->F:Ljava/util/List;

    return-void
.end method

.method public u()Lcom/shabakaty/downloader/j71$a;
    .locals 0

    return-object p0
.end method

.method public final u0(ZII)V
    .locals 5

    const-string v0, "player_state_update_enter"
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v0
    const-string v1, "player_state_update_playing_flag"
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    const-string v1, "player_state_update_reason"
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    const-string v1, "player_state_update_extra"
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->h()I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v0, "player_state_update_playback_state"
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->C()J
    move-result-wide v0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    const-string v0, "player_state_update_position_us"
    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v0, 0x1

    .line 1
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {p2, p1, v0, p3}, Lcom/shabakaty/downloader/q71;->u0(ZII)V

    return-void
.end method

.method public v(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/q71;->v(I)V

    return-void
.end method

.method public final v0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->c:Lcom/shabakaty/downloader/b00;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-boolean v4, v0, Lcom/shabakaty/downloader/b00;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 5
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :cond_1
    monitor-exit v0

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 9
    iget-object v3, v3, Lcom/shabakaty/downloader/q71;->o:Landroid/os/Looper;

    .line 10
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v0, v3, :cond_4

    const-string v0, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/q71;->o:Landroid/os/Looper;

    .line 14
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 15
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/sy4;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-boolean v1, p0, Lcom/shabakaty/downloader/s64;->G:Z

    if-nez v1, :cond_3

    const-string v1, "SimpleExoPlayer"

    .line 17
    iget-boolean v3, p0, Lcom/shabakaty/downloader/s64;->H:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_1
    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/fk2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iput-boolean v2, p0, Lcom/shabakaty/downloader/s64;->H:Z

    goto :goto_2

    .line 19
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    throw v1
.end method

.method public w()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/q71;->t:I

    return v0
.end method

.method public y()Lcom/shabakaty/downloader/xc3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    return-object v0
.end method

.method public z(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s64;->m:Lcom/shabakaty/downloader/ne;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/s64;->h()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/ne;->e(ZI)I

    move-result v0

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/s64;->l0(ZI)I

    move-result v1

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/s64;->u0(ZII)V

    return-void
.end method
