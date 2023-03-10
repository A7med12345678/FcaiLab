USE [fcailab]
GO
/****** Object:  Table [dbo].[c_t]    Script Date: 12/24/2022 2:28:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[c_t](
	[t_ran_code] [nchar](11) NULL,
	[c_id] [nvarchar](6) NULL,
	[test_result] [nchar](200) NULL,
	[test_result_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__c_t__152BCEDA1B7A02C6] PRIMARY KEY CLUSTERED 
(
	[test_result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[complain]    Script Date: 12/24/2022 2:28:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[complain](
	[com_id] [int] IDENTITY(1,1) NOT NULL,
	[com_content] [nchar](500) NOT NULL,
	[com_insert_date] [smalldatetime] NOT NULL,
	[c_id] [nvarchar](6) NULL,
	[w_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_complain] PRIMARY KEY CLUSTERED 
(
	[com_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 12/24/2022 2:28:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[c_id] [nvarchar](6) NOT NULL,
	[c_name] [nvarchar](20) NOT NULL,
	[c_address] [nvarchar](50) NOT NULL,
	[c_age] [int] NOT NULL,
	[c_gender] [nvarchar](6) NOT NULL,
	[c_mail] [nvarchar](30) NOT NULL,
	[c_phone] [nchar](11) NULL,
	[c_insert_date] [smalldatetime] NULL,
 CONSTRAINT [PK__customer__213EE77449F98529] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login_record]    Script Date: 12/24/2022 2:28:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login_record](
	[login_id] [int] IDENTITY(1,1) NOT NULL,
	[w_id] [nvarchar](50) NOT NULL,
	[w_login_time] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_login_record] PRIMARY KEY CLUSTERED 
(
	[login_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 12/24/2022 2:28:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[s_id] [int] NOT NULL,
	[s_name] [nchar](30) NOT NULL,
	[s_items] [nchar](100) NOT NULL,
	[s_phone] [nchar](11) NOT NULL,
	[s_total_but] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 12/24/2022 2:28:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[t_ran_code] [nchar](11) NOT NULL,
	[t_user_tests] [nvarchar](100) NOT NULL,
	[c_id] [nvarchar](10) NOT NULL,
	[t_total_price] [int] NOT NULL,
	[t_insert_date] [smalldatetime] NOT NULL,
	[t_w_name] [nchar](10) NOT NULL,
	[t_result] [nvarchar](1500) NULL,
	[tt_insert_date] [smalldatetime] NULL,
 CONSTRAINT [PK__test__B467871BF130C547] PRIMARY KEY CLUSTERED 
(
	[t_ran_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[to_t]    Script Date: 12/24/2022 2:28:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[to_t](
	[t_ran_code] [nchar](11) NULL,
	[to_code] [int] NULL,
	[to_t_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__to_t__0F292701DC93BBAF] PRIMARY KEY CLUSTERED 
(
	[to_t_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tool]    Script Date: 12/24/2022 2:28:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tool](
	[to_code] [int] IDENTITY(1,1) NOT NULL,
	[to_name] [nchar](20) NOT NULL,
	[to_price] [money] NOT NULL,
	[to_exp_date] [date] NOT NULL,
	[to_amount] [int] NOT NULL,
 CONSTRAINT [PK__tool__3118A5C3CBB0BDC0] PRIMARY KEY CLUSTERED 
(
	[to_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[w_c]    Script Date: 12/24/2022 2:28:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[w_c](
	[w_id] [nvarchar](50) NULL,
	[c_id] [nvarchar](6) NULL,
	[w_c_pri] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__w_c__75D11388E70B8570] PRIMARY KEY CLUSTERED 
(
	[w_c_pri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[w_s]    Script Date: 12/24/2022 2:28:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[w_s](
	[w_id] [nvarchar](50) NULL,
	[s_id] [int] NULL,
	[w_s_pri] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__w_s__C08D8A1E74D14E19] PRIMARY KEY CLUSTERED 
(
	[w_s_pri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[worker]    Script Date: 12/24/2022 2:28:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[worker](
	[w_id] [nvarchar](50) NOT NULL,
	[w_name] [nchar](10) NULL,
	[w_address] [nchar](10) NULL,
	[w_ssin] [nchar](14) NULL,
	[w_phone] [nvarchar](11) NULL,
	[w_salary] [int] NULL,
	[w_access] [int] NULL,
	[w_pass] [nvarchar](50) NULL,
	[w_age] [nchar](2) NULL,
	[w_gender] [nchar](6) NULL,
	[w_insert_date] [smalldatetime] NULL,
	[w_mail] [varchar](320) NULL,
 CONSTRAINT [PK__worker__1198F2A38CD535C9] PRIMARY KEY CLUSTERED 
(
	[w_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[c_t]  WITH CHECK ADD  CONSTRAINT [FK__c_t__c_id__36B12243] FOREIGN KEY([c_id])
REFERENCES [dbo].[customer] ([c_id])
GO
ALTER TABLE [dbo].[c_t] CHECK CONSTRAINT [FK__c_t__c_id__36B12243]
GO
ALTER TABLE [dbo].[c_t]  WITH CHECK ADD  CONSTRAINT [FK__c_t__t_ran_code__35BCFE0A] FOREIGN KEY([t_ran_code])
REFERENCES [dbo].[test] ([t_ran_code])
GO
ALTER TABLE [dbo].[c_t] CHECK CONSTRAINT [FK__c_t__t_ran_code__35BCFE0A]
GO
ALTER TABLE [dbo].[complain]  WITH CHECK ADD  CONSTRAINT [FK_complain_customer2] FOREIGN KEY([c_id])
REFERENCES [dbo].[customer] ([c_id])
GO
ALTER TABLE [dbo].[complain] CHECK CONSTRAINT [FK_complain_customer2]
GO
ALTER TABLE [dbo].[complain]  WITH CHECK ADD  CONSTRAINT [FK_complain_worker] FOREIGN KEY([w_id])
REFERENCES [dbo].[worker] ([w_id])
GO
ALTER TABLE [dbo].[complain] CHECK CONSTRAINT [FK_complain_worker]
GO
ALTER TABLE [dbo].[login_record]  WITH CHECK ADD  CONSTRAINT [FK_login_record_worker] FOREIGN KEY([w_id])
REFERENCES [dbo].[worker] ([w_id])
GO
ALTER TABLE [dbo].[login_record] CHECK CONSTRAINT [FK_login_record_worker]
GO
ALTER TABLE [dbo].[to_t]  WITH CHECK ADD  CONSTRAINT [FK__to_t__t_ran_code__398D8EEE] FOREIGN KEY([t_ran_code])
REFERENCES [dbo].[test] ([t_ran_code])
GO
ALTER TABLE [dbo].[to_t] CHECK CONSTRAINT [FK__to_t__t_ran_code__398D8EEE]
GO
ALTER TABLE [dbo].[to_t]  WITH CHECK ADD  CONSTRAINT [FK__to_t__to_code__3A81B327] FOREIGN KEY([to_code])
REFERENCES [dbo].[tool] ([to_code])
GO
ALTER TABLE [dbo].[to_t] CHECK CONSTRAINT [FK__to_t__to_code__3A81B327]
GO
ALTER TABLE [dbo].[w_c]  WITH CHECK ADD  CONSTRAINT [FK__w_c__c_id__2F10007B] FOREIGN KEY([c_id])
REFERENCES [dbo].[customer] ([c_id])
GO
ALTER TABLE [dbo].[w_c] CHECK CONSTRAINT [FK__w_c__c_id__2F10007B]
GO
ALTER TABLE [dbo].[w_c]  WITH CHECK ADD  CONSTRAINT [FK__w_c__w_id__2E1BDC42] FOREIGN KEY([w_id])
REFERENCES [dbo].[worker] ([w_id])
GO
ALTER TABLE [dbo].[w_c] CHECK CONSTRAINT [FK__w_c__w_id__2E1BDC42]
GO
ALTER TABLE [dbo].[w_s]  WITH CHECK ADD  CONSTRAINT [FK__w_s__s_id__32E0915F] FOREIGN KEY([s_id])
REFERENCES [dbo].[supplier] ([s_id])
GO
ALTER TABLE [dbo].[w_s] CHECK CONSTRAINT [FK__w_s__s_id__32E0915F]
GO
ALTER TABLE [dbo].[w_s]  WITH CHECK ADD  CONSTRAINT [FK__w_s__w_id__31EC6D26] FOREIGN KEY([w_id])
REFERENCES [dbo].[worker] ([w_id])
GO
ALTER TABLE [dbo].[w_s] CHECK CONSTRAINT [FK__w_s__w_id__31EC6D26]
GO
