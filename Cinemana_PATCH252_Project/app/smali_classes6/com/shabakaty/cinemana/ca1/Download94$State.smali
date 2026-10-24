.class final Lcom/shabakaty/cinemana/ca1/Download94$State;
.super Ljava/lang/Object;
.source "Download94.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Download94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation


# instance fields
.field advanced:Landroid/widget/LinearLayout;

.field final auto:Ljava/lang/Runnable;

.field c:Landroid/content/Context;

.field collectionNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final delete:Landroid/widget/Button;

.field downTime:J

.field downX:F

.field downY:F

.field dragValue:Z

.field expanded:Z

.field final fast:Lcom/shabakaty/cinemana/ca1/Download94$Fast;

.field from:Landroid/widget/EditText;

.field final gesture:Lcom/shabakaty/cinemana/ca1/SelectionGesture95;

.field final h:Landroid/os/Handler;

.field headerAttempts:I

.field headerBar:Landroid/view/ViewGroup;

.field headerView:Landroid/widget/ImageButton;

.field final hold:Ljava/lang/Runnable;

.field holding:Z

.field layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mode:Z

.field moved:Z

.field oldBottom:I

.field oldTop:I

.field final overlay:Landroid/widget/FrameLayout;

.field final paint:Lcom/shabakaty/cinemana/ca1/Download94$PaintView;

.field pending:Z

.field proxy:Ljava/lang/Object;

.field root:Landroid/view/ViewGroup;

.field rootObserver:Landroid/view/ViewTreeObserver;

.field rv:Landroid/view/ViewGroup;

.field rvObserver:Landroid/view/ViewTreeObserver;

.field scrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field season:Landroid/widget/Spinner;

.field final selected:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field title:Landroid/widget/TextView;

.field to:Landroid/widget/EditText;

.field final top:Landroid/widget/LinearLayout;

.field final visited:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field work:Landroid/widget/Spinner;

.field workKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field x:F

.field y:F


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->visited:Ljava/util/HashSet;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;

    invoke-direct {v3}, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;-><init>()V

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->gesture:Lcom/shabakaty/cinemana/ca1/SelectionGesture95;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->workKeys:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->collectionNames:Ljava/util/Map;

    .line 36
    new-instance v3, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda5;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->hold:Ljava/lang/Runnable;

    .line 37
    new-instance v3, Lcom/shabakaty/cinemana/ca1/Download94$State$5;

    invoke-direct {v3, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$5;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->auto:Ljava/lang/Runnable;

    .line 10
    iput-object v1, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->root:Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iput v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->oldTop:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    iput v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->oldBottom:I

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->overlay:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    iget-object v5, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setElevation(F)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/shabakaty/cinemana/ca1/Download94$PaintView;

    iget-object v8, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v5, v8, v0}, Lcom/shabakaty/cinemana/ca1/Download94$PaintView;-><init>(Landroid/content/Context;Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    iput-object v5, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->paint:Lcom/shabakaty/cinemana/ca1/Download94$PaintView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/shabakaty/cinemana/ca1/Download94$Fast;

    iget-object v8, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v5, v8, v0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;-><init>(Landroid/content/Context;Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    iput-object v5, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->fast:Lcom/shabakaty/cinemana/ca1/Download94$Fast;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-static {v9, v10}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v10, 0x5

    invoke-direct {v8, v9, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->top:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v9, -0xebded5

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/Download94;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v10

    iget-object v12, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v12, v6}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v12

    iget-object v13, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v13, v11}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v5, v9, v10, v12, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->applyDir(Landroid/view/View;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    const/16 v11, 0x30

    invoke-direct {v9, v7, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v11, 0x41d00000    # 26.0f

    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v10

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v10

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/TextView;

    iget-object v11, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->title:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->title:Landroid/widget/TextView;

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->title:Landroid/widget/TextView;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v13, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v14, 0x42300000    # 44.0f

    invoke-static {v13, v14}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v13

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v12, v4, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda7;

    invoke-direct {v10, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda7;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    const-string v12, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->addSelectionAction103(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    new-instance v10, Lcom/shabakaty/cinemana/ca1/Bulk102;

    const/4 v12, 0x1

    invoke-direct {v10, v0, v12}, Lcom/shabakaty/cinemana/ca1/Bulk102;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;Z)V

    const-string v12, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0643\u0644"

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->addSelectionAction103(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    new-instance v10, Lcom/shabakaty/cinemana/ca1/Bulk102;

    const/4 v12, 0x0

    invoke-direct {v10, v0, v12}, Lcom/shabakaty/cinemana/ca1/Bulk102;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;Z)V

    const-string v12, "\u0625\u0644\u063a\u0627\u0621 \u0627\u0644\u062a\u062d\u062f\u064a\u062f"

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->addSelectionAction103(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    new-instance v10, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda8;

    invoke-direct {v10, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda8;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    const-string v12, "\u062e\u064a\u0627\u0631\u0627\u062a"

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->addSelectionAction103(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x1

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->advanced:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda9;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    const-string v12, "\u0627\u0644\u0643\u0644"

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v10, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda10;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    const-string v12, "\u0639\u0643\u0633"

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->advanced:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 12
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v10, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v12, "\u0627\u0644\u0639\u0645\u0644"

    invoke-static {v12}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v13, 0x42700000    # 60.0f

    invoke-static {v12, v13}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v12

    iget-object v13, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v13, v8}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/Spinner;

    iget-object v11, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->work:Landroid/widget/Spinner;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v11, v4, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->advanced:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v9, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->work:Landroid/widget/Spinner;

    new-instance v10, Lcom/shabakaty/cinemana/ca1/Download94$State$1;

    invoke-direct {v10, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$1;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 13
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/Spinner;

    iget-object v11, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->season:Landroid/widget/Spinner;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v11, v4, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v10, "\u0645\u0646"

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->input(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v10

    iput-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->from:Landroid/widget/EditText;

    const-string v10, "\u0625\u0644\u0649"

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/shabakaty/cinemana/ca1/Download94$State;->input(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v10

    iput-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->to:Landroid/widget/EditText;

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->from:Landroid/widget/EditText;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v13, 0x42800000    # 64.0f

    invoke-static {v12, v13}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v12

    iget-object v6, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v11, v12, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->to:Landroid/widget/EditText;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v11, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v11, v13}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v11

    iget-object v12, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v10, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->advanced:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda11;

    invoke-direct {v8, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda11;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    const-string v9, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0646\u0637\u0627\u0642"

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Lcom/shabakaty/cinemana/ca1/Download94$State;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v10, v14}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v9, v4, v10, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda12;

    invoke-direct {v8, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda12;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    const-string v9, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0627\u0644\u0646\u0637\u0627\u0642"

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Lcom/shabakaty/cinemana/ca1/Download94$State;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v10, v14}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v9, v4, v10, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->advanced:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->advanced:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->advanced:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    new-instance v6, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda13;

    invoke-direct {v6, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda13;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    const-string v9, "\u062d\u0630\u0641"

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v6}, Lcom/shabakaty/cinemana/ca1/Download94$State;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v6

    iput-object v6, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->delete:Landroid/widget/Button;

    const v9, -0x27dfd5

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/Download94;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v11, 0x42500000    # 52.0f

    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v10

    const/16 v11, 0x50

    invoke-direct {v9, v7, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v7, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v7, v10}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v7, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v10, 0x41e00000    # 28.0f

    invoke-static {v7, v10}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v7, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v7, v10}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 15
    const-string v3, "androidx.recyclerview.widget.RecyclerView$q"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v3, v6, v4

    new-instance v3, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda14;

    invoke-direct {v3, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda14;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    invoke-static {v5, v6, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->proxy:Ljava/lang/Object;

    const-string v3, "H"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->proxy:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rvObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rootObserver:Landroid/view/ViewTreeObserver;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda15;

    invoke-direct {v3, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda15;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->scrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda6;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    iput-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rvObserver:Landroid/view/ViewTreeObserver;

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->scrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v3, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rootObserver:Landroid/view/ViewTreeObserver;

    iget-object v4, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v3, Lcom/shabakaty/cinemana/ca1/Download94$State$2;

    invoke-direct {v3, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Download94$State$2;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 17
    return-void
.end method


# virtual methods
.method addSelectionAction103(Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method at(FF)Ljava/lang/Object;
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    const-string p2, "P"

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {p1, p2, v0}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->items()Ljava/util/List;

    move-result-object p2

    if-ltz p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v2

    :catch_0
    move-exception p1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method begin()V
    .locals 7

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "\u0643\u0644 \u0627\u0644\u0645\u0648\u0627\u0633\u0645"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->items()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/shabakaty/cinemana/ca1/Download94$State;->eligible(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "S"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "season"

    invoke-static {v4, v6}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const-string v1, "\u0627\u0641\u062a\u062d \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0627\u0644\u0645\u0643\u062a\u0645\u0644\u0629 \u0623\u0648\u0644\u064b\u0627"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    new-instance v1, Lcom/shabakaty/cinemana/ca1/Download94$State$4;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v0, 0x1090009

    invoke-direct {v1, p0, v3, v0, v4}, Lcom/shabakaty/cinemana/ca1/Download94$State$4;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->works()V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->loadWorkNames()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->season:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->season:Landroid/widget/Spinner;

    const v1, -0xebded5

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Download94;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v5, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->mode:Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->top:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->delete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->top:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->delete:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    iput-boolean v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->expanded:Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->advanced:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->spacing()V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    return-void
.end method

.method bounds()V
    .locals 8

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->root:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget v3, v0, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    aget v5, v2, v4

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v6, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->root:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v6

    const-string v7, "home_bottom_nav"

    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Download94;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    new-array v1, v1, [I

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    aget v1, v2, v4

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->root:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    if-eq v1, v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5, v3, v5, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 4

    .line 19
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, -0x1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinWidth(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinimumWidth(I)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2, p1}, Landroid/widget/Button;->setPadding(IIII)V

    const p1, -0xe2d4cb

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Download94;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method confirm()V
    .locals 5

    .line 40
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->pending:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->items()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v2}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/shabakaty/cinemana/ca1/Download94$State;->eligible(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u062d\u0630\u0641 "

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u062d\u0644\u0642\u0629\u061f"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u0633\u064a\u062a\u0645 \u062d\u0630\u0641 \u0645\u0644\u0641\u0627\u062a \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0627\u0644\u0645\u062d\u062f\u062f\u0629 \u0645\u0646 \u0627\u0644\u062c\u0647\u0627\u0632. \u0647\u0630\u0647 \u0627\u0644\u0639\u0645\u0644\u064a\u0629 \u0644\u0627 \u064a\u0645\u0643\u0646 \u0627\u0644\u062a\u0631\u0627\u062c\u0639 \u0639\u0646\u0647\u0627."

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda1;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;Ljava/util/List;)V

    const-string v0, "\u062d\u0630\u0641"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Dialog95;->show(Landroid/app/AlertDialog;)V

    :cond_4
    :goto_1
    return-void
.end method

.method eligible(Ljava/lang/Object;)Z
    .locals 0

    .line 22
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Delete94;->candidate(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method end()V
    .locals 5

    .line 31
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->pending:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->mode:Z

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->holding:Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->hold:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->auto:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->top:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->delete:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->oldTop:I

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->oldBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    return-void
.end method

.method handle(Landroid/view/MotionEvent;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->holding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->selectAt()V

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->holding:Z

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->auto:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->hold:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method header()V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Native98;->header(Ljava/lang/Object;)V

    return-void
.end method

.method id(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method inSeason(Ljava/lang/Object;)Z
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->work:Landroid/widget/Spinner;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->work:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->workKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->workKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->workKeys:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->work:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->season:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u0643\u0644 \u0627\u0644\u0645\u0648\u0627\u0633\u0645"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "season"

    invoke-static {p1, v3}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method input(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 2

    .line 20
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const p1, -0x555556

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/4 p1, -0x1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    return-object v0
.end method

.method intercept(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 38
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->pending:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->mode:Z

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->hold:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->gesture:Lcom/shabakaty/cinemana/ca1/SelectionGesture95;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->cancel()V

    iput-boolean v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->holding:Z

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->auto:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return v3

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->downX:F

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->downY:F

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->downTime:J

    iput-boolean v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->holding:Z

    iput-boolean v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->moved:Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->visited:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->hold:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->gesture:Lcom/shabakaty/cinemana/ca1/SelectionGesture95;

    iget v5, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->x:F

    iget v6, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->down(FFJF)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->hold:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    iget-wide v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->downTime:J

    add-long/2addr v1, v4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return v3

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->y:F

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->holding:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->x:F

    iget v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->downX:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->y:F

    iget v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->downY:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    :cond_3
    iput-boolean v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->moved:Z

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->gesture:Lcom/shabakaty/cinemana/ca1/SelectionGesture95;

    iget v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->x:F

    iget v5, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->y:F

    invoke-virtual {v1, v4, v5}, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->move(FF)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->hold:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->holding:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->selectAt()V

    return v2

    :cond_5
    if-eq v0, v2, :cond_7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    return v3

    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->hold:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->auto:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->holding:Z

    iput-boolean v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->holding:Z

    if-ne v0, v2, :cond_9

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->mode:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->gesture:Lcom/shabakaty/cinemana/ca1/SelectionGesture95;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->tap()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->y:F

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->x:F

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->at(FF)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->eligible(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    return v2

    :cond_9
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->gesture:Lcom/shabakaty/cinemana/ca1/SelectionGesture95;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->cancel()V

    return v1
.end method

.method items()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    const-string v1, "getAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$confirm$15$com-shabakaty-cinemana-ca1-Download94$State(ILjava/util/List;)V
    .locals 4

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->pending:Z

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, " \u062d\u0644\u0642\u0629"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u062a\u0645 \u062d\u0630\u0641 "

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->end()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\n"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v0, "\u062d\u0633\u0646\u064b\u0627"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/Dialog95;->show(Landroid/app/AlertDialog;)V

    :goto_0
    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$confirm$16$com-shabakaty-cinemana-ca1-Download94$State(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 40
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->pending:Z

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    new-instance p3, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda16;

    invoke-direct {p3, p0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda16;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    invoke-static {p2, p1, p3}, Lcom/shabakaty/cinemana/ca1/Delete94;->run(Landroid/content/Context;Ljava/util/List;Lcom/shabakaty/cinemana/ca1/Delete94$Result;)V

    return-void
.end method

.method synthetic lambda$header$12$com-shabakaty-cinemana-ca1-Download94$State()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->header()V

    return-void
.end method

.method synthetic lambda$header$13$com-shabakaty-cinemana-ca1-Download94$State(Landroid/view/View;)V
    .locals 4

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Download94;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ca1/Download94$State;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-boolean p1, v0, Lcom/shabakaty/cinemana/ca1/Download94$State;->mode:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->confirm()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->begin()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$loadWorkNames$10$com-shabakaty-cinemana-ca1-Download94$State(Ljava/util/Map;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->collectionNames:Ljava/util/Map;

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->work:Landroid/widget/Spinner;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->mode:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->works()V

    :cond_1
    return-void
.end method

.method synthetic lambda$loadWorkNames$11$com-shabakaty-cinemana-ca1-Download94$State()V
    .locals 5

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "h"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "J"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "a"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "r"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "s"

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "work_names_failed"

    invoke-static {v2, v3, v1}, Lcom/shabakaty/cinemana/ca1/Log94;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda2;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$new$0$com-shabakaty-cinemana-ca1-Download94$State(Landroid/view/View;)V
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->end()V

    return-void
.end method

.method synthetic lambda$new$1$com-shabakaty-cinemana-ca1-Download94$State(Landroid/view/View;)V
    .locals 1

    .line 11
    iget-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->expanded:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->expanded:Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->advanced:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->spacing()V

    return-void
.end method

.method synthetic lambda$new$14$com-shabakaty-cinemana-ca1-Download94$State()V
    .locals 3

    .line 36
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->pending:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->gesture:Lcom/shabakaty/cinemana/ca1/SelectionGesture95;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/SelectionGesture95;->ready(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->x:F

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->at(FF)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->eligible(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->mode:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->begin()V

    :cond_2
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->mode:Z

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->holding:Z

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->dragValue:Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->visited:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->selectAt()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->auto:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method synthetic lambda$new$2$com-shabakaty-cinemana-ca1-Download94$State(Landroid/view/View;)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->items()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->eligible(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->inSeason(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    return-void
.end method

.method synthetic lambda$new$3$com-shabakaty-cinemana-ca1-Download94$State(Landroid/view/View;)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->items()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->eligible(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->inSeason(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    return-void
.end method

.method synthetic lambda$new$4$com-shabakaty-cinemana-ca1-Download94$State(Landroid/view/View;)V
    .locals 0

    .line 13
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->range(Z)V

    return-void
.end method

.method synthetic lambda$new$5$com-shabakaty-cinemana-ca1-Download94$State(Landroid/view/View;)V
    .locals 0

    .line 13
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->range(Z)V

    return-void
.end method

.method synthetic lambda$new$6$com-shabakaty-cinemana-ca1-Download94$State(Landroid/view/View;)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->confirm()V

    return-void
.end method

.method synthetic lambda$new$7$com-shabakaty-cinemana-ca1-Download94$State(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "c"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    aget-object p1, p3, v1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->intercept(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    aget-object p1, p3, v1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->handle(Landroid/view/MotionEvent;)V

    return-object v2

    :cond_1
    const-string v0, "hashCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "equals"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, 0x0

    aget-object p3, p3, p2

    if-ne p1, p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "toString"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "CA1 Download selection"

    return-object p1

    :cond_5
    return-object v2
.end method

.method synthetic lambda$new$8$com-shabakaty-cinemana-ca1-Download94$State()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->paint:Lcom/shabakaty/cinemana/ca1/Download94$PaintView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Download94$PaintView;->invalidate()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->fast:Lcom/shabakaty/cinemana/ca1/Download94$Fast;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Download94$Fast;->invalidate()V

    return-void
.end method

.method synthetic lambda$new$9$com-shabakaty-cinemana-ca1-Download94$State()V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->bounds()V

    return-void
.end method

.method loadWorkNames()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->work:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Delete94;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/Download94$State$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method range(Z)V
    .locals 6

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->from:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->to:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->items()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "episodeNumber"

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/shabakaty/cinemana/ca1/Download94$State;->eligible(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/shabakaty/cinemana/ca1/Download94$State;->inSeason(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-lt v4, v0, :cond_0

    if-gt v4, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v3}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v3}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const-string v0, "\u0623\u062f\u062e\u0644 \u0646\u0637\u0627\u0642 \u062d\u0644\u0642\u0627\u062a \u0635\u062d\u064a\u062d\u064b\u0627"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method selectAll102(Landroid/view/View;)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->items()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->eligible(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    return-void
.end method

.method selectAt()V
    .locals 3

    .line 35
    iget v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->x:F

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->at(FF)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->eligible(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->visited:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->dragValue:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    :cond_2
    :goto_1
    return-void
.end method

.method spacing()V
    .locals 7

    .line 29
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->oldTop:I

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->expanded:Z

    if-eqz v4, :cond_0

    const/high16 v4, 0x438b0000    # 278.0f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x42c80000    # 100.0f

    :goto_0
    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->rv:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->oldBottom:I

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const/high16 v6, 0x42800000    # 64.0f

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->paint:Lcom/shabakaty/cinemana/ca1/Download94$PaintView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Download94$PaintView;->invalidate()V

    return-void
.end method

.method spinnerAdapter(Ljava/util/List;)Landroid/widget/ArrayAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Download94$State$3;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/shabakaty/cinemana/ca1/Download94$State$3;-><init>(Lcom/shabakaty/cinemana/ca1/Download94$State;Landroid/content/Context;ILjava/util/List;)V

    return-object v0
.end method

.method update()V
    .locals 3

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Native98;->refresh(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0627\u0644\u0645\u062d\u062f\u062f: "

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->delete:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->pending:Z

    if-eqz v1, :cond_0

    const-string v1, "\u062c\u0627\u0631\u064d \u0627\u0644\u062d\u0630\u0641\u2026"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062d\u0630\u0641 ("

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->delete:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->pending:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->paint:Lcom/shabakaty/cinemana/ca1/Download94$PaintView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Download94$PaintView;->invalidate()V

    return-void
.end method

.method workKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 23
    const-string v0, "rootEpisode"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "root:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "collectionID"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collection:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movie:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method workName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 24
    const-string v0, "rootEpisode"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "collectionID"

    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->c:Landroid/content/Context;

    const-string v3, "ca1_work_names"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->collectionNames:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "title"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0639\u0645\u0644 "

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    :cond_3
    return-object v2
.end method

.method works()V
    .locals 5

    .line 25
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->workKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->workKeys:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Download94$State;->items()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/shabakaty/cinemana/ca1/Download94$State;->eligible(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/shabakaty/cinemana/ca1/Download94$State;->workKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/shabakaty/cinemana/ca1/Download94$State;->workName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\u0643\u0644 \u0627\u0644\u0623\u0639\u0645\u0627\u0644"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->workKeys:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->work:Landroid/widget/Spinner;

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->spinnerAdapter(Ljava/util/List;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$State;->work:Landroid/widget/Spinner;

    const v1, -0xebded5

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Download94;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
